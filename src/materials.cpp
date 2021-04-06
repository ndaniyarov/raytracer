// Raytracer framework from https://raytracing.github.io by Peter Shirley, 2018-2020
// alinen 2021, modified to use glm and ppm_image class

#include "ppm_image.h"
#include "AGLM.h"
#include "ray.h"
#include "sphere.h"
#include "triangle.h"
#include "camera.h"
#include "material.h"
#include "hittable_list.h"

using namespace glm;
using namespace agl;
using namespace std;

color ray_color(const ray& r, const hittable_list& world, int depth)
{
   hit_record rec;
   if (depth <= 0)
   {
      return color(0,0,0);
   }

   if (world.hit(r, 0.001f, infinity, rec))
   {
      ray scattered;
      color attenuation;
      if (rec.mat_ptr->scatter(r, rec, attenuation, scattered))
      {
         color recurseColor = ray_color(scattered, world, depth - 1);
         return attenuation * recurseColor;
      }
      return attenuation;
   }
   vec3 unit_direction = normalize(r.direction());
   auto t = 0.5f * (unit_direction.y + 1.0f);
   return (1.0f - t) * color(5, 0, 0) + t * color(0.5f, 0.7f, 1.0f);
}

color normalize_color(const color& c, int samples_per_pixel)
{
   // todo: implement me!
   float scale = 1.0f / samples_per_pixel;
   float r = std::min(0.999f, std::max(0.0f, c.r * scale));
   float g = std::min(0.999f, std::max(0.0f, c.g * scale));
   float b = std::min(0.999f, std::max(0.0f, c.b * scale));

   // apply gamma correction 
   r = sqrt(r);
   g = sqrt(g);
   b = sqrt(b);

   return color(r, g, b);
}

void ray_trace(ppm_image& image)
{
   // Image
   int height = image.height();
   int width = image.width();
   float aspect = width / float(height);
   int samples_per_pixel = 15; // higher => more anti-aliasing
   int max_depth = 10; // higher => less shadow acne

   // Camera
   vec3 camera_pos(0, 0, 10);
   float viewport_height = 2.0f;
   float focal_length = 4.0; 
   camera cam(camera_pos, viewport_height, aspect, focal_length);

   // World
   shared_ptr<material> gray = make_shared<lambertian>(color(0.5f));
   shared_ptr<material> matteGreen = make_shared<lambertian>(color(0, 0.5f, 0));
   shared_ptr<material> metalRed = make_shared<metal>(color(1, 0, 0), 0.3f);
   shared_ptr<material> glass = make_shared<dielectric>(1.5f);
   shared_ptr<material> phongDefault = make_shared<phong>(camera_pos);

   hittable_list world;
   //class example
   /*
   world.add(make_shared<sphere>(point3(-2.25, 0, -1), 0.5f, phongDefault));
   world.add(make_shared<sphere>(point3(-0.75, 0, -1), 0.5f, glass));
   world.add(make_shared<sphere>(point3(2.25, 0, -1), 0.5f, metalRed));
   world.add(make_shared<sphere>(point3(0.75, 0, -1), 0.5f, matteGreen));
   world.add(make_shared<sphere>(point3(0, -100.5, -1), 100, gray));
   */

//spiral
float cx = 0;
float cy = 0;
float r = 2.5;
float sides = 50;
float coils = 12;
float rotation = 1;

float dist = r/sides;
float dist1 = coils/sides;// 0 to 1 based.
float rad = dist1 * 2 * M_PI;
rotation *= 2 * M_PI;
for(int i=1; i<=sides; i++){
   float dist3 = i * dist;
   float dist4 = i * rad + rotation;
   float x = cx + cos(dist4) * dist3;
   float y = cy + sin(dist4) * dist3;
   world.add(make_shared<sphere>(point3(x, y, -1), 0.05f, glass));
}
  

  /*
  //SNOWFLAKE
  //base
   world.add(make_shared<sphere>(point3(0, -105.5, -10), 100, gray));
   //vertical
   for (float i = -2.4; i <= 2.6; i= i + 0.3){
      world.add(make_shared<sphere>(point3(0, i, -1), 0.1f, glass));
   }
   //horizontal
   for (float i = -2.4; i <= 2.6; i= i + 0.3){
      world.add(make_shared<sphere>(point3(i, 0, -1), 0.1f, glass));
   }
   //diagonal 4 spheres
   world.add(make_shared<sphere>(point3(-1.4, 1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-1.8, 1.4, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.4, -1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.8, -1.4, -1), 0.1f, glass));
   //diagonal down
   float s = 2.0;
   for (float i = -2.0; i <= 2.2; i= i + 0.2){
         world.add(make_shared<sphere>(point3(i, s, -1), 0.1f, glass));
         s = s-0.2;
   }
   //diagonal 4 spheres
   world.add(make_shared<sphere>(point3(-1.8, -1.4, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-1.4, -1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.8, 1.4, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.4, 1.8, -1), 0.1f, glass));
   //diagonal up
   float s1 = -2.0;
   for (float i = -2.0; i <= 2.2; i= i + 0.2){
         world.add(make_shared<sphere>(point3(i, s1, -1), 0.1f, glass));
         s1 = s1+0.2;
   }
   //left arrow
   world.add(make_shared<sphere>(point3(-2.1, 0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-2.1, -0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-1.8, 0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-1.8, -0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-1.8, 0.6, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-1.8, -0.6, -1), 0.1f, glass));
   //right arrow
   world.add(make_shared<sphere>(point3(2.1, 0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(2.1, -0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.8, 0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.8, -0.3, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.8, 0.6, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(1.8, -0.6, -1), 0.1f, glass));
   //upper arrow
   world.add(make_shared<sphere>(point3(-0.3, 2.1, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(0.3, 2.1, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-0.3, 1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(0.3, 1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-0.6, 1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(0.6, 1.8, -1), 0.1f, glass));
   //lower arrow
   world.add(make_shared<sphere>(point3(-0.3, -2.1, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(0.3, -2.1, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-0.3, -1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(0.3, -1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(-0.6, -1.8, -1), 0.1f, glass));
   world.add(make_shared<sphere>(point3(0.6, -1.8, -1), 0.1f, glass));
   //world.add(make_shared<triangle>(point3(-2.25,0,-1), point3(2.25,0,-1), point3(0.75,0,1), matteGreen));
*/
   // Ray trace
   for (int j = 0; j < height; j++)
   {
      for (int i = 0; i < width; i++)
      {
         color c(0, 0, 0);
         for (int s = 0; s < samples_per_pixel; s++) // antialias
         {
            float u = float(i + random_float()) / (width - 1);
            float v = float(height - j - 1 - random_float()) / (height - 1);

            ray r = cam.get_ray(u, v);
            c += ray_color(r, world, max_depth);
         }
         c = normalize_color(c, samples_per_pixel);
         image.set_vec3(j, i, c);
      }
   }
   //I used this file for creating all of my unique images 
   //by uncommenting parts of code above and below
   //image.save("materials.png");
   //image.save("snowflake.png");
   image.save("background+spiral.png");
}
