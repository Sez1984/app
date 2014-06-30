#ifndef MODULE1_H
#define MODULE1_H

#include "module1_global.h"

class MODULE1SHARED_EXPORT Module1
{

public:
    static float  getRandom();
    static float** getRandomMatrix(int a, int b);
};

#endif // MODULE1_H
