# Mapa de Disparidade de Imagens Estéreo Retificadas

Dado um par de imagens estéreo retificadas, utilizei janela de correspondência para calcular o mapa de disparidade da segunda imagem em relação à primeira.

**OBS**: O uso de rotinas prontas só foi utilizado na abertura e salvamento de imagens, álgebra linear e álgebra de matrizes.

## Dados de entrada

O par de imagens estéreo retificadas utilizado foi disponibilizado pela Middlebury Stereo Vision Page (http://vision.middlebury.edu/stereo/). O site também disponibiliza o gabarito do par.

## Janela de busca

Foram gerados resultados para diferentes tamanhos de janela de busca, a saber, 1×1, 3×3, 5×5 e 9×9. O programa permite facilmente a obtenção de resultados para outros tamanhos.

## Faixa de disparidade

Foi analisada qual a faixa de disparidade da linha de varredura na segunda imagem deve ser percorrida na busca pela correspondência de uma dada localização na imagem de referência.

## Função de correspondência

Duas funções de correspondência foram aplicadas: (i) soma do quadrado das diferenças (SSD); e (ii) correlação normalizada (NCC).
