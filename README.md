# [Octave Scripts (Image Processing)](https://github.com/GabriOliv/octave-image-processing-general)

Simple Scripts for Image Processing compatible with GNU Octave.

---

#### Test Images:

| File Name | Source | Title | Owner| 
| ------ | ------ | ------ | ------ |
| "001_img.jpg" | [VisualVenom](https://visual-venom.tumblr.com/post/87744938514/secret-drinking-spot) | Secret drinking spot | [Troy Frederick](https://www.flickr.com/people/130811727@N04/) |

---

### How to Run:

* Unzip the scripts
* Open [Octave](https://www.gnu.org/software/octave/index)
  * Select the folder inside "Folder Browser"
  * Call Scripts in "Command Window"

Example 01:
```matlab
>> equali_img_save(imread('001_img.jpg'));
```
Example 02:
```matlab
>> A = imread('001_img.jpg');
>> equali_img_save(A);
```
