# Template LaTeX para Dissertação/Tese do PPGCC

Template em LaTeX para elaboração de Monografia (Dissertação/Tese) do Programa
de Pós-Graduação em Ciência da Computação da Universidade Estadual Paulista
(UNESP). Este template é baseado no modelo disponibilizado pela Biblioteca de
São José de Rio Preto, acessível em
<https://www.ibilce.unesp.br/#!/biblioteca/servicos-oferecidos/normalizacao/estrutura-do-trabalho-academico/>.
**Verifique o modelo original pois há instruções relevantes para elaboração da
dissertação/tese.**

Segue abaixo a organização deste repositório.

.  
├── **code**  
│   └── hash.c  
├── **content**  
│   ├── abbreviations.tex  
│   ├── definitions.tex  
│   ├── **postextual**  
│   │   ├── annexA.tex  
│   │   ├── annexB.tex  
│   │   ├── appendixA.tex  
│   │   └── appendixB.tex  
│   ├── postextual.tex  
│   ├── **pretextual**  
│   │   ├── abstract.tex  
│   │   ├── acknowledgments.tex  
│   │   ├── dedication.tex  
│   │   └── resumo.tex  
│   ├── pretextual.tex  
│   ├── **textual**  
│   │   ├── chapter01.tex  
│   │   ├── chapter02.tex  
│   │   ├── chapter03.tex  
│   │   ├── chapter04.tex  
│   │   ├── chapter05.tex  
│   │   └── chapter06.tex  
│   └── textual.tex  
├── **images**  
│   ├── library1.jpg  
│   ├── library2.jpg  
│   └── unesplogo.pdf  
├── **info**  
│   └── general.tex  
├── Makefile  
├── **metadata**  
│   └── index_card.tex  
├── monograph.tex  
├── README.md  
├── references.bib  
├── **results**  
└── **style**  
&nbsp; &nbsp; &nbsp; └── monograph.sty  


* O diretório content contém: os elementos pré textuais (agradecimentos,
dedicatória, resumo e abstract), os textuais (capítulos) e os pós textuais
(apêndices e anexos). Estes são organizados através das entradas presentes
nos arquivos pretextual.tex, textual.tex e postextual.tex, respectivamente.
Para inserir um novo capítulo/apêndice/anexo, basta criar um novo arquivo no
subdiretório correspondente (textual ou postextual) e inserir uma nova entrada,
através do comando `include{content/...}`, no arquivo tex (textual.tex ou
postextual.tex). A lista de abreviaturas e os termos definidos estão
localizados nos arquivos abbreviations.tex e definitions.tex.

* O diretório info armazena as informações refentes ao trabalho (autor, título,
orientador, ...).

* O diretório metadata armazena a ficha catalográfica, necessária para a versão
final (após a defesa) a ser submetida para o Repositório da UNESP. Para
realizar a inserção deste documento, basta remover os comentários.

* Os diretórios code, images e results armazenam os algoritmos, imagens e
resultados, respectivamente, inseridos na dissertação.

* As modificações realizadas no modelo canônico abnTeX2 estão contidas no
diretório style.

# Modo de Uso

Para utilizar este template basta clonar o repositório e executar o comando
make, conforme as instruções abaixo. Também é possível utilizá-lo através do
Overleaf, bastando baixar este repositório no formato zip e fazer o upload do
mesmo na plataforma.

```bash
$ git clone https://github.com/rafaelmurari/ppgcc-abntex2.git
$ cd ppgcc-abntex2
$ make
```

A seguir são detalhados os passos para personalização deste modelo.

1 - Atualize as informações encontradas no arquivo info/general.tex.

2 - Este template apresenta duas estruturações do sumário: a definida pela
norma ABNT (default) e a hierárquica. Caso queira ativar a organização
hierárquica, basta modificar a entrada \sumario{abnt} para
\sumario{hierarquico} no arquivo info/general.tex.

3 - Atualize o texto nos arquivos presentes nos diretórios content/{pretextual,
textual, postextual}/.

4 - Insira as referências bibliográficas no arquivo references.bib.

5 - Atualize a seção de agradecimentos presente no arquivo
/content/pretextual/acknowledgments.tex. **OBS: discentes que foram bolsistas (
CAPES, FAPESP ou outra instituição) durante o curso devem inserir uma nota no
final da Seção de Agradecimentos. Esta nota se encontra no modelo disponibilizado
pela Biblioteca (link acima).**
