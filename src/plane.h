#ifndef PLANE_H_
#define PLANE_H_

#include "hittable.h"
#include "AGLM.h"

class plane : public hittable {
public:
   plane() : a(0), n(0), mat_ptr(0) {}
   plane(const glm::point3& p, const glm::vec3& normal, 
      std::shared_ptr<material> m) : a(p), n(normal), mat_ptr(m) {};

   virtual bool hit(const ray& r, hit_record& rec) const override
   {
      float eps = 0.0001f;
      float t = 0;
      float len = length(r.direction());
      glm::vec3 d = r.direction()/len;
      float denum = glm::dot(n, d);
      if (denum == 0.0){
         rec.t = 0; // save the time when we hit the object
         rec.p = r.origin(); // ray.origin + t * ray.direction
         rec.mat_ptr = mat_ptr; 
         glm::vec3 outward_normal = n; // compute unit length normal
         rec.set_face_normal(r, outward_normal);
         return true;
      }
      if (fabs(denum) < eps) { return false;}
      glm::vec3 v1 = a - r.origin();
      float num = glm::dot(v1, n);
      t = num/denum;
      if (t <=0 ){return false;}
       // save relevant data in hit record
      rec.t = t/len; // save the time when we hit the object
      rec.p = r.at(t/len); // ray.origin + t * ray.direction
      rec.mat_ptr = mat_ptr; 
      glm::vec3 outward_normal = n; // compute unit length normal
      rec.set_face_normal(r, outward_normal);
      // save relevant data in hit record

      // save normal
      //glm::vec3 outward_normal = normalize(rec.p - center); // compute unit length normal
      return true;
   }

public:
   glm::vec3 a;
   glm::vec3 n;
   std::shared_ptr<material> mat_ptr;
};

#endif
