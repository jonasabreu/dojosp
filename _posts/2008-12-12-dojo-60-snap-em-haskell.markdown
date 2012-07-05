--- 
wordpress_id: 59
layout: post
title: Dojo 60 - Snap em Haskell
date: 2008-12-12 22:32:41 -02:00
wordpress_url: http://www.dojosp.org/?p=59
---
<ul>
	<li>Data: 09/12/2008</li>
	<li>Participantes:Â Bani,Â Breno,Â Jac,Â Â Juca,Â Hugo, Mari,Â Pedro,Â Ricardo e Tiago</li>
	<li>Problema: <a href="http://sites.google.com/site/tddproblems/all-problems-1/magneto-effect">Snap</a></li>
	<li>Código:Â <span><a href="http://github.com/dojosp/participant-s-projects/tree/master">http://github.com/dojosp/participant-s-projects/tree/master/60-Snap-Haskell</a></span></li>
</ul>
<span>Â O Dojo iniciou com a votação do problema e da linguagem de programação. As linguagensÂ sugeridasÂ foram Haskell, Ruby e Java. A idéia de fazer o Dojo em java seria respeitando umas regras que o pessoal da Thoughtworks montou:Â </span>

<span><span>Â <a href="http://binstock.blogspot.com/2008/04/perfecting-oos-small-classes-and-short.html"><span>http://binstock.blogspot.com/2008/04/perfecting-oos-small-classes-and...</span></a>.</span></span>

<span><span>Essas 9 regras são exercícios para aperfeiçoar a escrita de boas implementações de Orientação a Objetos. São elas:</span></span>
<ol>
	<li>Usar somente um nível de identação por método.</li>
	<li>Não usar a palavra reservada â€˜elseâ€™.</li>
	<li>Envolver os tipos primitivos e Strings.</li>
	<li>Usar somene 1 ponto por linha de código.</li>
	<li>Não abreviar nomes.</li>
	<li>Manter entidades pequenas.</li>
	<li>Não usar mais que duas variáveis de instância na classe.</li>
	<li>Usar classes de coleções que sejam as mais genéricas.</li>
	<li>Não usar getters e setters.</li>
</ol>
<span>Porém o problema escolhido por votação foi o Snap e a linguagem Haskell.</span>

<span><strong>Problema</strong></span>

<span>O problema Snap se trata de clicks (definidos como pontos) e desenhos de vértices. Sendo que se o click estiver em uma área de atração de um determinado ponto, a posição do click será a própria posição do ponto de atração. O site desse problema está detalhado <a href="http://sites.google.com/site/tddproblems/all-problems-1/magneto-effect">aqui</a>.</span>

Â <strong>Codando</strong>

<span>Teve uma novidade da rotação das duplas. Após os 7 minutos, entrava uma pessoa direto na programação eÂ  quem estava codando passaria a ser o â€œco-pilotoâ€.</span>

<span>Para a resolução do problema, foram criados dois arquivos: Tests.hs (para os testes) e Snap.hs (implementação do problema). Bem ao estilo TDD, a classe de teste começou com as linhas:</span>

<span>Tests.hs</span>
<code>
module Main where
import Test.HUnit
import Snap

main = runTestTT testes

testes = TestList [testeCalculaDistancias]

testeCalculaDistancias = TestList[
    "Distancia entre um ponto e ele mesmo deveria ser 0" ~:
    distancia (Ponto 0 0) (Ponto 0 0 ) ~?= 0
        ]
</code>

<span> Esse código simplesmente significa que o teste vai assegurar que a distância entre o Ponto na posição x = 0 e y = 0, e outro Ponto na posição x = 0 e y = 0, a distância é zero (Linha 11). Ã‰ claro, pois eles estão na mesma posição ! :) </span>
<span> Disparando esse teste, vão ocorrer erros, pois não existe a definição de "Ponto" e "distância". Portanto vamos implementá-los. </span>

<span> Snap.hs</span>
<code>
module Snap where

data Ponto = Ponto Int Int

distancia :: Ponto -&gt; Ponto -&gt; Int
distancia _ _ = 0
</code>

Na linha 3 é definido o Ponto, que será representado por 'Ponto' seguido de dois valores numéricos (Int Int). Na linha 5 é definido a função 'distância' que recebe dois pontos por parâmetro. Na linha 6 diz que distância, que recebe qualquer coisa no primeiro parâmetro e qualquer coisa no segundo parâmetro, retorna 0 (zero). Agora o teste passa com sucesso!

Porém ainda não está correto dizer que a distância entre qualquer ponto é zero. Então vamos escrever mais testes.

Tests.hsÂ 
<code>
"Distancia entre o ponto 0 0 e 0 1 deveria ser 1" ~:
distancia (Ponto 0 0) (Ponto 0 1 ) ~?= 1
</code>

Incluindo essas duas linhas, agora o teste falha. A distância entre o ponto 0 0 e o ponto 0 1 é 1, porém o método 'distancia' sempre retorna zero. Vamos alterar a implementação desse método:

Snap.hs

<code>
distancia :: Ponto -&gt; Ponto -&gt; Int
distancia (Ponto 0 0) (Ponto 0 1 ) = 1
distancia (Ponto 0 0) (Ponto 0 2 ) = 2
distancia _ _ = 0
</code>

As linhas 2 e 3 foram incluídas e agora o teste passa! Porém, apesar de estarmos roubando para o teste passar, esses passos pequenos são muito importantes. São chamados de baby steps. Baby step é uma técnica de metodologias ágeis que facilita a simplicidade do código, pois só precisamos desenvolver o que é realmente necessário para passar no teste.

O ciclo do TDD é:
ï¿¼ï¿¼<img src="http://static.flickr.com/33/66281384_4997df55b7_m.jpg" alt="" />

<span>Portanto, agora que os testes estão passando, vamos refatorar para o código ficar menos hard coded. As linhas:</span>

<span>Snap.hs</span>
<code>
distancia (Ponto 0 0) (Ponto 0 1 ) = 1
distancia (Ponto 0 0) (Ponto 0 2 ) = 2
distancia _ _ = 0
</code>

Podem agora ser substituídas por:
<code> distancia (Ponto 0 a) (Ponto 0 b ) = b-a </code>

Agora nossa regra está funcionando para vértices na vertical. Porém ainda não está pronto. Vamos escrever mais um teste:

Tests.hs
<code>
"Distancia entre o ponto 0 0 e 1 0 deveria ser 1" ~:
distancia (Ponto 0 0) (Ponto 1 0 ) ~?= 1
</code>

Está passando 2 testes mas esse último falha. Vamos à implementação para esse teste incluído passar:

Snap.hs
<code>
distancia :: Ponto -&gt; Ponto -&gt; Int
distancia (Ponto 0 a) (Ponto 0 b ) = b-a
distancia (Ponto a 0) (Ponto b 0 ) = b-a
</code>

Antes só passavam os testes para vértices na vertical. Agora está passando para vértices na horizontal também. Vamos fazer um teste e ver se passa na diagonal. Incluindo isso no teste ficaria:

Tests.hs

<code>
"Distancia entre o ponto 1 0 e 1 1 deveria ser 1" ~:
distancia (Ponto 1 0) (Ponto 1 1 ) ~?= 1
</code>

A implementação para passar nesse teste, ainda roubando, ficaria assim:

Snap.hs

<code>
distancia (Ponto 1 0) (Ponto 1 1 ) = 1
</code>

Essa implementação está hard coded, mas é importante que seja dessa maneira pois precisamos manter o foco em ficar verde no teste, e aí sim fazer a refatoração.
Ok, como os testes estão passando novamente e está tudo no verde, vamos refatorar. As linhas:

<code>
distancia (Ponto 0 a) (Ponto 0 b ) = b-a
distancia (Ponto a 0) (Ponto b 0 ) = b-a
distancia (Ponto 1 0) (Ponto 1 1 ) = 1
</code>

Porem ser substituídas pela linha:

<code> distancia (Ponto x1 y1) (Ponto x2 y2 ) = x2-x1 + y2-y1 </code>

Tudo passando! Vamos escrever mais testes para ver se a regra está certa:

Tests.hs
<code>
"Distancia entre o ponto 0 3 e 4 0 deveria ser 5
distancia (Ponto 0 3) (Ponto 4 0 ) ~?= 5
</code>

Com esse teste o resultado falha, portanto a fórmula acima ainda não está pronta. O correto seria implementar o teorema de pitágoras para calcular a distância entre os pontos:

Snap.hs

<code>
data Ponto = Ponto Float Float 

distancia :: Ponto -&gt; Ponto -&gt; Float
distancia (Ponto x1 y1) (Ponto x2 y2 ) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))
</code>

<strong>Concluindo</strong>

Vamos parar por aqui. O problema ainda não está resolvido, mas mostrei esses passos para percebermos a importância do baby step e como a modelagem pode ficar melhor e com mais qualidade. Para ver o que foi codado, entre no site do Github <a href="http://github.com/dojosp/participant-s-projects/tree/master/60-Snap-Haskell">aqui</a>.

O TDD nos direciona para uma maior <strong>simplicidade</strong> para ser desenvolvido somente o necessário para passar no teste. Além de fornecer mais <strong>confiança</strong> para devidas <strong>refatorações</strong>.

<strong>Retrospectiva</strong>

No final teve, como de costume, a nossaÂ retrospectivaÂ e os pontos a melhorar foram:

â€¢	"Não precisa do b-a", sobre um dos baby-steps que poderia ser desnecessário
â€¢	"Nano baby step =&gt; seguro mas muito lento". Sobre passos muito pequenos.
â€¢	Alguns passos grandes/rápidos em alguns momentos.
â€¢	Faltaram mais explicações sobre o que é baby-step durante o código
â€¢	"Faltou tão pouco" para terminar o problema. Apesar que esse não é o objetivo final do Dojo.+
â€¢	Teve gente que não gostou desse esquema de rotação invertido.
â€¢	Projetor estava ruim.
â€¢	Baby-step? Não "grown-up wannabe steps".
â€¢	Perdemos muito tempo criando templates do projeto.
â€¢	Emacs é melhor que Gedit para codar Haskell

Os pontos positivos foram:

â€¢	Tipos de dados no Haskell
â€¢	Haskell
â€¢	Pessoas gostaram no rodízio invertido.
â€¢	Problema legal, simples e bom para TDD
â€¢	Baby steps
â€¢	" Ëœ é sempre antes." Â Sobre a notação no Haskell.

Assuntos em Parking lote foram

â€¢	TODOs ajudam ou atrapalham?
â€¢	Geradores do ruby são ótimos para gerar templates
