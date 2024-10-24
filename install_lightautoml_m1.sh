# u need install gcc on m1 because OpenMP (fatal error: 'omp.h' file not found) is not available by default apple's clang. 
# and works with python3.10 for me, python3.12 3.13 does not working :(
brew install libomp gcc
export OMP_NUM_THREADS=1
export CMAKE_CXX_FLAGS="-Xpreprocessor -fopenmp -I$(brew --prefix libomp)/include"
export CMAKE_LDFLAGS="-L$(brew --prefix libomp)/lib -lomp"
export CC=/opt/homebrew/opt/gcc/bin/gcc-14
export CXX=/opt/homebrew/opt/gcc/bin/g++-14; 
python3 -m pip install LightAutoML
