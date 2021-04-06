#ifndef BOX_H_
#define BOX_H_

#include "hittable.h"
#include "AGLM.h"

class box : public hittable {
public:
   box() : c(0), ax(0), ay(0), az(0), hx(0), hy(0), hz(0), mat_ptr(0) {}
   box(const glm::point3& center, 
       const glm::vec3& xdir, const glm::vec3& ydir, const glm::vec3& zdir,
       const glm::vec3& halfx, const glm::vec3& halfy, const glm::vec3& halfz,
       std::shared_ptr<material> m) : c(center), ax(xdir), ay(ydir), az(zdir), 
          hx(halfx), hy(halfy), hz(halfz), mat_ptr(m) {};

   virtual bool hit(const ray& r, hit_record& rec) const override
   {
      /*
      float tmin = -INFINITY;
      float tmax = INFINITY;
      glm::vec3 p = c - r.origin();

      vector<vec3> ai;
      vector<vec3> hi;
      glm::vec3 ax = vec3(1,0,0);
      glm::vec3 ay = vec3(0,1,0);
      glm::vec3 az = vec3(0,0,1);
      ai[0] = ax;
      ai[1] = ay;
      ai[2] = az;
      glm::vec3 hx = vec3(0.5,0,0);
      glm::vec3 hy = vec3(0,0.5,0);
      glm::vec3 hz = vec3(0,0,0.5);
      hi[0] = hx;
      hi[1] = hy;
      hi[2] = hz;

      //for ax 
      float e,f,t1,t2,t = 0.0;

      for (int i = 0; i < 3; i++){
         e = dot(ai[i], p);
         f = dot(ai[i], r.direction());
         if (abs(f) > eps){ 
             t1 = (e + hi[i])/f;
             t2 = (e – hi[i])/f;
             if (t1 > t2) {swap(t1, t2);}
             if (t1 > tmin) {tmin = t1;}
             if (t2 < tmax) {tmax = t2;}
             if (tmin > tmax) {return false;}
             if (tmax < 0) {return false;}
         }
         else if ((-e-hi[i] > 0) || (-e+hi[i] < 0)) {return false;}
      }
     if (tmin > 0) { t = tmin;}
     else {t = tmax;}

       // save relevant data in hit record
      rec.t = t; // save the time when we hit the object
      rec.p = r.at(t; // ray.origin + t * ray.direction
      rec.mat_ptr = mat_ptr; 

      // save normal
      glm::vec3 outward_normal = normalize(rec.p - center); // compute unit length normal
      rec.set_face_normal(r, outward_normal);
*/
      return false;
   }

public:
   glm::vec3 c;
   glm::vec3 ax;
   glm::vec3 ay;
   glm::vec3 az;
   glm::vec3 hx;
   glm::vec3 hy;
   glm::vec3 hz;
   std::shared_ptr<material> mat_ptr;
};

#endif
