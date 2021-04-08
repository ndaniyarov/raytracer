# raytracer

Implements a raytracer based on the book [_Ray Tracing in One Weekend_](https://raytracing.github.io/books/RayTracingInOneWeekend.html). 

## How to build

*Windows*

Open git bash to the directory containing this repository.

```
raytracer $ mkdir build
raytracer $ cd build
raytracer/build $ cmake -G "Visual Studio 16 2019" ..
raytracer/build $ start CS312-Raytracer.sln
```

Your solution file should contain multiple projects, such as `gradient` and `normals`.
To run from the git bash command shell, 

```
raytracer/build $ ../bin/Debug/gradient
raytracer/build $ ../bin/Debug/normals
```

*macOS*

Open terminal to the directory containing this repository.

```
raytracer $ mkdir build
raytracer $ cd build
raytracer/build $ cmake ..
raytracer/build $ make
```

To run each program from build, you would type

```
raytracer/build $ ../bin/gradient
raytracer/build $ ../bin/normals
```
materials: 

materials.png![image](https://user-images.githubusercontent.com/55757317/113646502-f06d9780-9656-11eb-94a3-d19be207fe83.png)

snowflake using spheres:

snowflake1.png![image](https://user-images.githubusercontent.com/55757317/113646541-0418fe00-9657-11eb-9116-1afeb00652bf.png)

background change and spiral using spheres:

background+spiral.png![image](https://user-images.githubusercontent.com/55757317/113646573-12671a00-9657-11eb-8f71-155126830212.png)

all primitives (plane, triangle, sphere):

tree.png![image](https://user-images.githubusercontent.com/55757317/114099353-a5d75f80-9890-11eb-9c4b-4736adc60464.png)

