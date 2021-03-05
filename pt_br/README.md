# [Octave Scripts (Image Processing)](https://github.com/GabriOliv/octave-image-processing-general)

Scripts Simples para Processamento de Imagem compatíveis com GNU Octave.

---

[![GNU Octave](https://img.shields.io/badge/GNU%20Octave-5.2.0-blue)](https://www.gnu.org/software/octave/index)
[![Language Status](https://img.shields.io/badge/Language-pt--BR-success)](https://github.com/GabriOliv/octave-image-processing-general/blob/main/pt_br/README.md)
[![Language Status](https://img.shields.io/badge/Language-en-success)](https://github.com/GabriOliv/octave-image-processing-general/blob/main/README.md)

---

#### Imagens de Teste:

| Nome | Fonte | Título | Criador| 
| ------ | ------ | ------ | ------ |
| "001_img.jpg" | [VisualVenom](https://visual-venom.tumblr.com/post/87744938514/secret-drinking-spot) | Secret drinking spot | [Troy Frederick](https://www.flickr.com/people/130811727@N04/) |

---

### Usando os Scripts:

* Unzip os scripts
* Selecione a pasta no ambiente de trabalho do [Octave](https://www.gnu.org/software/octave/index)
* Chame no Terminal como no Exemplo

Exemplo 01:
```matlab
>> equali_img_save(imread('001_img.jpg'));
```
Exemplo 02:
```matlab
>> A = imread('001_img.jpg');
>> equali_img_save(A);
```
