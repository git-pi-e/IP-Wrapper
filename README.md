# IP-Wrapper

Implementation for Image Processing Filters using OpenCV in C++.

For the partial fulfillment of the course **CS F301 Principles of Programming Language**.

## Installation Guide

### Installing OpenCV on Ubuntu

1. Install the dependencies

```bash
sudo apt-get install -y build-essential cmake git pkg-config libgtk2.0-dev
```

2.1 Download the source

![Download the source](image/README/1666734718308.png)

2.2. On the GitHub page, copy the HTTPS link from the code button.

![Clone the repository](image/README/1666734825406.png)

3. Open terminal and type the following

```bash
# Clone the repository
git clone url

# Build the source.
mkdir -p build && cd build

# Generate the Build Script.
cmake ../opencv

# Build the Source
make -j4

# Install the OpenCV package
sudo make install
```

That’s it. If you did not encounter any error then OpenCV is installed successfully on your Linux system. The header files are at the appropriate location.

### Downloading the code repository -

1. Create a folder and then change the current working directory.
```bash
mkdir check && cd check
```

2. Clone the repository from Github.
```bash
git clone https://github.com/Neo-PL/IP-Wrapper.git && cd IP-Wrapper
```

3. Make sure you have cmake & make installed, To install run,
```bash
sudo apt-get install cmake make libboost-all-dev
```

and then run the following set of commands.
```bash
cmake . && make
```
We have made a script for the test cases, just put the follwoing command in the terminal and go to the folders test_color for the division in RGB channel and folder test_saltpepper for salt and pepper filter on the images present in the dataset folder.
Command:
```bash
./run-tests.sh
```
Once you have successfully executed all the steps, now you can run the application using the pdi executable file.

## Usage - Test Cases

For testing the functionality of the filters we will be using the popular Image of Lenna, widely used in Image Processing.

The image is already present in the repository.

To run the program.
```bash
./[this tool] [input file name] [mono | color] [filter number] [filter options]
```
`File Name :` e.g.
```lenna.png```

`Mono|Color :` State whether the image is Monochromatic or Color.


`Available filters :` 

  0: No filter 
  
  1-3:    R, G and B splitting to monocromatic image. 
  
  4-6:    R, G and B splitting to color image.
  
  7:      Add Salt and Pepper noise.
  
  8-10:   Box filtering (size 3, 11, user value).
  
  11-13:  Median filters of size 3, 7 and 11.
  
  14:     Sobel filter (edge detection). 
  
  15-16:  Negative of input image (RGB and Y). 
  
  17-21:  Thresholding (50, 120, 200, user value, Y channel mean). 
  
  22-25:  Add brightness (30, 80, -100, -150).
  
  26-27:  Multiply brightness (RGB, 0.5 and 1.5). 
  
  28-29:  Multiply brightness (Y, 0.5 and 1.5). 
  
  30:     Provide a file containing a mask.
  
`Filter Option :` Depending of the filter.
e.g. ```./kernels/gaussian.txt``` for the mask filter.

### Example -

1. Salt and Pepper filter
```bash
./pdi lenna.png color 7
```
The above commands generate salt and pepper noise in the image provided and generates a new image with the following noise.

![Original Image](lenna.png)
![Salt and Pepper Noise](lenna_saltpepper.png)

2. Custom Mask Filter (E.g. Gaussian Mask - Smoothens Images)
```bash
./pdi lenna.png color 30 ./kernels/gaussian.txt
```
The above command creates a custom Mask based on the matrix value provided in the gaussian.txt file. Extensive Documentation can be found on GitHub.

![Original Image](lenna.png)
![Gaussian Filter](lenna_masked.png)

3. Splitting Images
```bash
./pdi lenna.png color 5
```
The following line of code Splits the image into the 3 color channels and based on the Number Entered [4,5,6] : [R,G,B], we get the output.

![Original Image](lenna.png)
![Green Channel](lenna_G_tri.png)

## Wish to Contribute?

Fork the repository and make a pull request. We will review the changes and merge them if they are valid :)

## Contributors:
- [Yash Khanna](https://github.com/YKhanna2003)
- [Piyush Mohite](https://github.com/git-pi-e)
- [Harsh Gujarathi](https://github.com/alphaNewrex)
- [Dhruv Rohira](https://github.com/rohira-dhruv)
- [Manank Patel](https://github.com/manank20)
- [Manav Tanna]()
