#!/bin/bash

{ cd pubmed-fetch-rb && ruby main.rb; } | 
{ cd berkeleyparser && java -jar BerkeleyParser-1.7.jar -gr eng_sm6.gr; } |
tr -d ".,;" |
{ cd crea-extract-rkt && racket extract.rkt; } |
{ cd dickens-filter && ruby main.rb; } |
cat

