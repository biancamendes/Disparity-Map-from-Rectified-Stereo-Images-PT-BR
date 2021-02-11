# Especificação do Problema: Mapa de Disparidade de Imagens Estéreo Retificadas

Dado um par de imagens estéreo retificadas, utilize janela de correspondência para calcular o mapa de disparidade da segunda imagem em relação à primeira.

## Dados de entrada

Pares de imagens estéreo retificadas são disponibilizados pela Middlebury Stereo Vision Page (http://vision.middlebury.edu/stereo/). O site também disponibiliza o gabarito de cada par.

## Janela de busca

Deverão ser gerados resultados para diferentes tamanhos de janela de busca (e.g., 1 × 1, 3 × 3, 5 × 5, dentro outros).

## Faixa de disparidade

Deverá ser analisada qual a faixa de disparidade da linha de varredura na secunda imagem deve ser percorrida na busca pela correspondência de uma dada localização na imagem de referência.

## Função de correspondência

Duas funções de correspondência devem ser aplicadas: (i) soma do quadrado das diferenças (SSD); e (ii) correlação normalizada.
