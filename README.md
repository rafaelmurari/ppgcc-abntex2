# Template LaTeX para Dissertação de Mestrado

Template em LaTeX para elaboração da Dissertação de Mestrado do Programa de Pós-Graduação em Ciência da Computação da Universidade Estadual Paulista (UNESP).

Este template é baseado no modelo disponibilizado pela Biblioteca de São José de Rio Preto, acessível em <https://www.ibilce.unesp.br/#!/biblioteca/servicos-oferecidos/normalizacao/estrutura-do-trabalho-academico/>.

Segue abaixo a organização deste repositório.

.  
├── **chapters**  
│   ├── abstract.tex  
│   ├── chapter01.tex  
│   ├── chapter02.tex  
│   ├── chapter03.tex  
│   ├── chapter04.tex  
│   ├── chapter05.tex  
│   ├── chapter06.tex  
│   └── resumo.tex  
├── **code**  
│   └── hash.c  
├── dissertacao.tex  
├── **images**  
│   ├── library1.jpg  
│   ├── library2.jpg  
│   └── unesplogo.pdf  
├── Makefile  
├── **metadata**    
├── references.bib  
├── **results**  
└── **style**  
&nbsp; &nbsp; &nbsp; └── dissertacao.sty

O diretório chapters contém os capítulos inseridos na dissertação. Caso seja necessário inserir ou remover capítulos, basta atualizar as entradas `\include{chapters/chapterXX}` presentes na parte textual do arquivo dissertacao.tex.

O diretório metadata armazena a ficha catalográfica e o termo de reprodução xerográfica, ambos necessários para a versão final (após a defesa) a ser submetida para o Repositório da UNESP. Para realizar a inserção destes documentos, basta remover os comentários das respectivas seções encontradas no arquivo dissertacao.tex.

Os diretórios code, images e results armazenam os algoritmos, imanges e resultados, respectivamente, inseridos na dissertação.

Por fim, as modificações realizadas no modelo canônico abnTeX2 estão contidas no diretório style.

# Modo de Uso

A seguir são detalhados os passos para personalização deste modelo.

1 - Atualize as seguintes informações encontradas no arquivo dissertacao.tex. 

```latex
\titulo{Inserir o Título do Trabalho}                                           
\autor{Nome do Autor}                                                           
\local{Inserir Cidade - SP}                                                     
\data{2019}                                                                     
\orientador{Prof. Dr. ...}                                                      
\instituicao{%                                                                  
    UNIVERSIDADE ESTADUAL PAULISTA "Júlio de Mesquita Filho" -- UNESP             
}                                                                               
\tipotrabalho{Dissertação (Mestrado)}                                           
\preambulo{Dissertação apresentada como parte dos requisitos para obtenção do   
título de Mestre em Ciência da Computação, junto ao Programa de Pós-Graduação   
em Ciência da Computação, do Instituto de [Inserir o Instituto] da              
Universidade Estadual Paulista "Júlio de Mesquita Filho", Câmpus de [Inserir    
cidade].} 
```

2 - Altere os dados da capa (Câmpus), folha de rosto (Financiadora) e (Financiadora, Membros da Banca e Data da Defesa), encontrados no arquivo dissertacao.sty.

3 - Insira o texto de sua dissertação nos arquivos encontrados no diretório chapters.

4 - Atualize a seção de Agradecimentos presente no arquivo dissertacao.tex. **NOTA: discentes que foram bolsistas durante o curso devem inserir uma nota exigida pela CAPES e FAPESP. Esta nota se encontra no modelo disponibilizado pela Biblioteca (link acima).**