#include "leap.h"


bool leap_year(int year){
   if(year % 4 == 0){
      if(year % 100 == 0){
         if(year % 400 == 0){
            return true;
         }
         return false;
      }
      return true;
   }
   return false;
}





#ifndef LEAP_H
#define LEAP_H

#include <stdbool.h>

bool leap_year(int year);

#endif