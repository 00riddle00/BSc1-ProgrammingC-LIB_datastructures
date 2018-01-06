CC=gcc
CFLAGS=-Wall -Wextra -xc -g -std=gnu99

lib_datastructures.so: object_files/*.o
	gcc --shared -lm -o lib_datastructures.so object_files/*.o 
	cp lib_datastructures.so ${LD_LIBRARY_PATH}

clean:
	rm lib_datastructures.so

rebuild: clean lib_datastructures.so
