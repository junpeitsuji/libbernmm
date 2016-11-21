# libbernmm
Ruby-Interface for bernmm-1.1 (C++ Library). http://web.maths.unsw.edu.au/~davidharvey/code/bernmm/


### Requirements 

```
ruby -v
ruby 2.2.0p0 (2014-12-25 revision 49005) [x86_64-darwin15]

GNU MP (free library for arbitrary precision arithmetic) 
Ver. 6.1.1
https://gmplib.org

NTL: A Library for doing Number Theory
Ver. 5.4.1  !!!ONLY 5.4.1!!!
http://www.shoup.net/ntl/
```


### Download and Install

```
git clone https://github.com/junpeitsuji/libbernmm.git
cd libbernmm
```

install 
```
./build_and_install_libbernmm.sh
```

During installation, please type `y` key and press `[Enter]`.


### Try test code

After installation, try test code:

```
$ cd test_codes
$ ruby test_ber.rb 
0, 1, 1
2, 1, 6
4, -1, 30
6, 1, 42
8, -1, 30
10, 5, 66
12, -691, 2730
14, 7, 6
16, -3617, 510
...
198, 88527914861348004968400581010530565220544526400339548429439843908721196349579494069282285662653465989920237253162555666526385826449862863083834096823053048072002986184254693991336699593468906111158296442729034119206322233, 244713882



p = 37
[1, 31, 16, 15, 16, 4, 17, 32, 22, 31, 15, 15, 17, 12, 29, 2, 0, 2]
```


### Usage 

```
require './path/to/libbernmm/bernmm'

p Bernnm.ber(12)      # => (-691/2730)
p Bernnm.ber(37, 32)  # => 0
```

