#include "module1.h"
#include "math.h"
#include "stdlib.h"
#include "random"


float Module1::getRandom()
{
    return (rand()%100)/(100*1.0);
}

float** Module1::getRandomMatrix(int a, int b)
{
   float** matrix;

   matrix = new float* [a];
   for(int i=0; i<a; i++)
     {  matrix[i] = new float [b];
       for(int y=0; y<b; y++)
           matrix[i][y] = (rand()%100)/(100*1.0);
       }
   return(matrix);
   delete []matrix;
}
