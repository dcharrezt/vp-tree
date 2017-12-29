#include "mainwindow.h"
#include <QApplication>


#include "VpTree.h"
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <stdint.h>
#include <string>
#include <cstring>
#include <cmath>


#include "CImg.h"

#include<iostream>
#include<fstream>
#include<vector>

using namespace cimg_library;
using namespace std;

typedef int II;
typedef float FF;

struct Point {
    std::string name;
    vector<FF> char_vector;
};

typedef vector<Point> points;

vector<string> read_file(string pathFile);
points training_Set(vector<string> &names);
vector<FF> vectorize(string n);
vector<II> process_names(vector<string> names);

void QueryPerformanceCounter( uint64_t* val )
{
    timeval tv;
    struct timezone tz = {0, 0};
    gettimeofday( &tv, &tz );
    *val = tv.tv_sec * 1000000 + tv.tv_usec;
}



double m_distance( const Point& p1, const Point& p2 )
{
    float distance = 0;
    for(auto i = 0; i<p1.char_vector.size(); i++){
        distance += abs(p1.char_vector[i] - p2.char_vector[i]);
    }
    return distance;
}

struct HeapItem {
    HeapItem( int index, double dist) :
        index(index), dist(dist) {}
    int index;
    double dist;
    bool operator<( const HeapItem& o ) const {
        return dist < o.dist;
    }
};


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();

//    std::vector<Point> points;
//    printf("Reading cities database...\n");
//    FILE* file = fopen("cities.txt", "rt");
//    for(;;) {
//        char buffer[1000];
//        Point point;
//        if ( !fgets(buffer, 1000, file ) ) {
//            fclose( file );
//            break;
//        }
//        point.city = buffer;
//        size_t comma = point.city.rfind(",");
//        sscanf(buffer + comma + 1, "%lg", &point.longitude);
//        comma = point.city.rfind(",", comma-1);
//        sscanf(buffer + comma + 1, "%lg", &point.latitude);
//        //printf("%lg, %lg\n", point.latitude, point.longitude);
//        points.push_back(point);
//        //if(points.size()>50000)break;
//    }

    auto names = read_file("jaffe/moods.dat");
    auto n = process_names(names);
    auto inputs = training_Set(names);

   cout << names.size() << endl;
    cout << n.size() << endl;
    cout << inputs.size() << endl;

//   for(auto i : inputs){
//       for(auto j: i){
//           cout<<j<<" ";
//       }
//       cout << endl;
//   }



    VpTree<Point, m_distance> tree;

    tree.create( inputs );

    Point point;

    point.char_vector.push_back(253);
    point.char_vector.push_back(2);
    point.char_vector.push_back(113.82);
    point.char_vector.push_back( 73.6262);
    point.char_vector.push_back(5875.57);

    vector<Point> results;
    vector<double> distances;

    tree.search( point, 8, &results, &distances );

        for( int i = 0; i < results.size(); i++ ) {
            cout << results[i].name << " -- " << distances[i] << endl;
        }

//    QueryPerformanceCounter( &end );
//    printf("Create took %d\n", (int)(end-start));

//    Point point;
//    point.latitude = -16.427168;
//    point.longitude = -71.568079;
//    std::vector<Point> results;
//    std::vector<double> distances;

//    QueryPerformanceCounter( &start );
//    tree.search( point, 8, &results, &distances );
//    QueryPerformanceCounter( &end );

//    printf("Search took %d\n", (int)(end-start));

//    for( int i = 0; i < results.size(); i++ ) {
//        printf("%s %lg\n", results[i].city.c_str(), distances[i]);
//    }


    return a.exec();
}


vector<string> read_file(string pathFile)
{
    ifstream file;
    file.open( pathFile );
    vector< string > names;
    string n;

    while(getline(file,n)) {
        names.push_back(n);
    }
    while(file>>n)
    file.close();

    return names;
}

vector<FF> vectorize(string n)
{
    std::vector<FF> v;

    CImg<unsigned char> image2(("jaffe/"+n).c_str());
    auto g = image2.haar(false,4);
    auto h = image2.crop(0,0,15,15);

    v.push_back(image2.max());
    v.push_back(image2.min());
    v.push_back(image2.mean());
    v.push_back(sqrt(image2.variance()));
    v.push_back(image2.variance());

//    for(auto i : v){
//        cout << i << " ";
//    }
//    cout << endl;


    return v;
}

points training_Set(vector<string> &names)
{
   points pointss;
   Point point;

    for(unsigned int i = 0; i < names.size(); i++) {
        point.name = names[i];
        point.char_vector = vectorize(names[i]);
        pointss.push_back(point);
    }
    return pointss;
}

vector<II> process_names(vector<string> names){
    vector<II> ms;
    for(auto i : names){
        ms.push_back( stoi(i.substr(0, 1)) );
    }
    return ms;
}


