# Template LaTeX para Dissertação/Tese do PPGCC

Template em LaTeX para elaboração de Monografia (Dissertação/Tese) do Programa
de Pós-Graduação em Ciência da Computação da Universidade Estadual Paulista
(UNESP). Este template é baseado no modelo disponibilizado pela Biblioteca de
São José de Rio Preto, acessível em <https://www.ibilce.unesp.br/#!/biblioteca/servicos-oferecidos/normalizacao/estrutura-do-trabalho-academico/>. **Verifique o modelo original
pois há instruções relevantes para elaboração da dissertação/tese.**

Segue abaixo a organização deste repositório.

.  
├── **chapters**  
│   ├── abstract.tex  
│   ├── annexA.tex  
│   ├── annexB.tex  
│   ├── appendixA.tex  
│   ├── appendixB.tex  
│   ├── chapter01.tex  
│   ├── chapter02.tex  
│   ├── chapter03.tex  
│   ├── chapter04.tex  
│   ├── chapter05.tex  
│   ├── chapter06.tex  
│   └── resumo.tex  
├── **code**  
│   └── hash.c  
├── **images**  
│   ├── library1.jpg  
│   ├── library2.jpg  
│   └── unesplogo.pdf  
├── Makefile  
├── **metadata**    
├── monograph.tex  
├── README.md  
├── references.bib  
├── **results**  
└── **style**  
&nbsp; &nbsp; &nbsp; &nbsp; |── definitions.tex  
&nbsp; &nbsp; &nbsp; └── monograph.sty

* O diretório chapters contém o resumo, capítulos, apêndices e anexos inseridos
na dissertação. Caso seja necessário inserir ou remover capítulos/apêndices/anexos,
basta atualizar as entradas `\include{chapters/...}` presentes na parte textual
do arquivo dissertacao.tex.

* O diretório metadata armazena a ficha catalográfica, necessária para a versão
final (após a defesa) a ser submetida para o Repositório da UNESP. Para realizar
a inserção deste documento, basta remover os comentários da respectiva seção
encontrada no arquivo dissertacao.tex.

* Os diretórios code, images e results armazenam os algoritmos, imagens e
resultados, respectivamente, inseridos na dissertação.

* As modificações realizadas no modelo canônico abnTeX2 estão contidas no
diretório style.

# Modo de Uso

Para utilizar este template basta clonar o repositório e executar o comando
make, conforme as instruções abaixo.

```bash
$ git clone https://github.com/rafaelmurari/ppgcc-abntex2.git
$ cd ppgcc-abntex2
$ make
```

A seguir são detalhados os passos para personalização deste modelo.

1 - Atualize as seguintes informações encontradas no arquivo dissertacao.tex. 

```latex
\titulo{Inserir o Título do Trabalho}                                           
\autor{Nome do Autor}                                                           
\local{Inserir Cidade}
\data{2019}                                                                     
\orientador{Prof. Dr. ...}                                                      
\instituicao{%                                                                  
    UNIVERSIDADE ESTADUAL PAULISTA "Júlio de Mesquita Filho" -- UNESP             
}                                                                               
\tipotrabalho{Dissertação (Mestrado)}                                           
\preambulo{[Dissertação/Tese] apresentada como parte dos requisitos para
obtenção do título de [Mestre/Doutor] em Ciência da Computação, junto ao
Programa de Pós-Graduação em Ciência da Computação, do Instituto de [Inserir o
Instituto] da Universidade Estadual Paulista "Júlio de Mesquita Filho", Câmpus
de [Inserir cidade].} 
```

2 - Altere os dados da capa (Câmpus), folha de rosto (Financiadora) e folha de
aprovação (Financiadora, Membros da Banca e Data da Defesa), encontrados no
arquivo style/monograph.sty.

3 - Este template apresenta duas estruturações do sumário: a definida pela
norma ABNT e a hierárquica (default). Caso queira desativar a organização
hierárquica basta comentar a seguinte linha no arquivo style/monograph.sty.

```latex
setbool{hierarchicalToc}{true} 
```

4 - Insira o texto de sua dissertação nos arquivos encontrados no diretório
chapters.

5 - Insira as referências bibliográficas no arquivo references.bib.

6 - Atualize a seção de agradecimentos presente no arquivo monograph.tex.
**OBS: discentes que foram bolsistas durante o curso devem inserir uma nota
exigida pela CAPES e FAPESP. Esta nota se encontra no modelo disponibilizado
pela Biblioteca (link acima).**
