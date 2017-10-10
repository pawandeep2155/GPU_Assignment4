#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <thrust/host_vector.h>
#include <thrust/device_vector.h>

using namespace std;

int main(){
    
    int board_size;
    
    ifstream infile;
    infile.open("/Users/pawandeepsingh/Documents/Read_from_file/Read_from_file/file.txt");
    
    if(!infile){
        cerr << "Unable to open file file.txt";
        exit(1);   // call system to stop
    }

    string line;

    // get board size
    getline(infile,line);
    board_size = atoi(line.c_str());
    
    int board[board_size][board_size];

    int row = 0;
    bool queen_at_index;

    while(getline(infile,line)){
        // store file matrix to board
        int col = 0;
        istringstream streamA(line);
        while (streamA >> queen_at_index) {
            board[row][col] = queen_at_index;
            col++;
        }
        row++;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    return 0;
    
}




































