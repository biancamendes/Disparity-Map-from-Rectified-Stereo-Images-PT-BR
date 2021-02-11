% Copyright 2020, Bianca de A. M. da Silva, Universidade Federal Fluminense.
% Github: https://github.com/biancamendes

function [ImD] = disparity_map (ImL,ImR,n,fcorr)

% ImL   = imagem da câmera esquerda
% ImR   = imagem da câmera direita
% ImD   = mapa de disparidade
% n     = quantidade de vizinhos considerados
% 2n+1  = tamanho da janela de busca
% fcorr = função de correspondência (1=SSD e 2=NCC)

tic

% Transformar em cinza
ImL = rgb2gray(ImL);
ImR = rgb2gray(ImR);

% Transformar em real
ImL = im2double (ImL);
ImR = im2double (ImR);

% Deixando as duas imagens do mesmo tamanho
[y,x] = size(ImL);
[y2,x2] = size(ImR);

if y > y2
    ImR = [ImR; ones(y-y2, x2)];
elseif y < y2
    ImR = ImR(1:y,:);
end

if x > x2
    ImR = [ImR ones(y, x-x2)];
elseif x < x2
    ImR = ImR(:,1:x);
end

% Criando o mapa de disparidade
ImD = zeros(y,x);

% Médias para o NCC
if fcorr == 2
    ML = mean(mean(ImL));
    MR = mean(mean(ImR));
end

% Começando a varrer a imagem
for j = 1+n : y-n
    
    for i = 1+n : x-n
        
        % Janela de busca de ImR       
        KernelR = ImR(j-n:j+n,i-n:i+n);
        
        Diff = 10^10;
        Pos  = 10^10;
        
        for k = x-n : -1 : i
            
            % Janela de busca de ImL
            KernelL = ImL(j-n:j+n,k-n:k+n);    
            
            if fcorr == 2
                           
              % Correlação cruzada normalizada (NCC)
              DL = KernelL - ML;
              DR = KernelR - MR;
              M = (DL./sqrt(sum(sum(DL.^2)))-DR./sqrt(sum(sum(DR.^2)))).^2;
            
            elseif fcorr == 1
                
              % Soma do quadrado das diferenças (SSD)
              M = (KernelR - KernelL).^2;
                
            else    
            
              error ('Erro: Forneça um fcorr igual a 1 (SSD) ou 2 (NCC)')
                
            end
            
            Sum = sum(sum(M));
            
            % Encontrando a menor diferença e sua posição
            if Sum < Diff 
               Diff = Sum;
               Pos  = k;
            end
               
        end
        
        % Se não achar a janela correspondente, repita o resultado do anterior
        if Diff > 1.0
           ImD(j,i) = ImD(j,i-1);
        else
           ImD(j,i) = Pos - i;
        end
        
    end
    
end

ImD = uint8(ImD*3);

toc