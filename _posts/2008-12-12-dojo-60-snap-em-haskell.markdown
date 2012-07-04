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
	<li>CÃ³digo:Â <span><a href="http://github.com/dojosp/participant-s-projects/tree/master">http://github.com/dojosp/participant-s-projects/tree/master/60-Snap-Haskell</a></span></li>
</ul>
<span>Â O Dojo iniciou com a votaÃ§Ã£o do problema e da linguagem de programaÃ§Ã£o. As linguagensÂ sugeridasÂ foram Haskell, Ruby e Java. A idÃ©ia de fazer o Dojo em java seria respeitando umas regras que o pessoal da Thoughtworks montou:Â </span>

<span><span>Â <a href="http://binstock.blogspot.com/2008/04/perfecting-oos-small-classes-and-short.html"><span>http://binstock.blogspot.com/2008/04/perfecting-oos-small-classes-and...</span></a>.</span></span>

<span><span>Essas 9 regras sÃ£o exercÃ­cios para aperfeiÃ§oar a escrita de boas implementaÃ§Ãµes de OrientaÃ§Ã£o a Objetos. SÃ£o elas:</span></span>
<ol>
	<li>Usar somente um nÃ­vel de identaÃ§Ã£o por mÃ©todo.</li>
	<li>NÃ£o usar a palavra reservada â€˜elseâ€™.</li>
	<li>Envolver os tipos primitivos e Strings.</li>
	<li>Usar somene 1 ponto por linha de cÃ³digo.</li>
	<li>NÃ£o abreviar nomes.</li>
	<li>Manter entidades pequenas.</li>
	<li>NÃ£o usar mais que duas variÃ¡veis de instÃ¢ncia na classe.</li>
	<li>Usar classes de coleÃ§Ãµes que sejam as mais genÃ©ricas.</li>
	<li>NÃ£o usar getters e setters.</li>
</ol>
<span>PorÃ©m o problema escolhido por votaÃ§Ã£o foi o Snap e a linguagem Haskell.</span>

<span><strong>Problema</strong></span>

<span>O problema Snap se trata de clicks (definidos como pontos) e desenhos de vÃ©rtices. Sendo que se o click estiver em uma Ã¡rea de atraÃ§Ã£o de um determinado ponto, a posiÃ§Ã£o do click serÃ¡ a prÃ³pria posiÃ§Ã£o do ponto de atraÃ§Ã£o. O site desse problema estÃ¡ detalhado <a href="http://sites.google.com/site/tddproblems/all-problems-1/magneto-effect">aqui</a>.</span>

Â <strong>Codando</strong>

<span>Teve uma novidade da rotaÃ§Ã£o das duplas. ApÃ³s os 7 minutos, entrava uma pessoa direto na programaÃ§Ã£o eÂ  quem estava codando passaria a ser o â€œco-pilotoâ€.</span>

<span>Para a resoluÃ§Ã£o do problema, foram criados dois arquivos: Tests.hs (para os testes) e Snap.hs (implementaÃ§Ã£o do problema). Bem ao estilo TDD, a classe de teste comeÃ§ou com as linhas:</span>

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

<span> Esse cÃ³digo simplesmente significa que o teste vai assegurar que a distÃ¢ncia entre o Ponto na posiÃ§Ã£o x = 0 e y = 0, e outro Ponto na posiÃ§Ã£o x = 0 e y = 0, a distÃ¢ncia Ã© zero (Linha 11). Ã‰ claro, pois eles estÃ£o na mesma posiÃ§Ã£o ! :) </span>
<span> Disparando esse teste, vÃ£o ocorrer erros, pois nÃ£o existe a definiÃ§Ã£o de "Ponto" e "distÃ¢ncia". Portanto vamos implementÃ¡-los. </span>

<span> Snap.hs</span>
<code>
module Snap where

data Ponto = Ponto Int Int

distancia :: Ponto -&gt; Ponto -&gt; Int
distancia _ _ = 0
</code>

Na linha 3 Ã© definido o Ponto, que serÃ¡ representado por 'Ponto' seguido de dois valores numÃ©ricos (Int Int). Na linha 5 Ã© definido a funÃ§Ã£o 'distÃ¢ncia' que recebe dois pontos por parÃ¢metro. Na linha 6 diz que distÃ¢ncia, que recebe qualquer coisa no primeiro parÃ¢metro e qualquer coisa no segundo parÃ¢metro, retorna 0 (zero). Agora o teste passa com sucesso!

PorÃ©m ainda nÃ£o estÃ¡ correto dizer que a distÃ¢ncia entre qualquer ponto Ã© zero. EntÃ£o vamos escrever mais testes.

Tests.hsÂ 
<code>
"Distancia entre o ponto 0 0 e 0 1 deveria ser 1" ~:
distancia (Ponto 0 0) (Ponto 0 1 ) ~?= 1
</code>

Incluindo essas duas linhas, agora o teste falha. A distÃ¢ncia entre o ponto 0 0 e o ponto 0 1 Ã© 1, porÃ©m o mÃ©todo 'distancia' sempre retorna zero. Vamos alterar a implementaÃ§Ã£o desse mÃ©todo:

Snap.hs

<code>
distancia :: Ponto -&gt; Ponto -&gt; Int
distancia (Ponto 0 0) (Ponto 0 1 ) = 1
distancia (Ponto 0 0) (Ponto 0 2 ) = 2
distancia _ _ = 0
</code>

As linhas 2 e 3 foram incluÃ­das e agora o teste passa! PorÃ©m, apesar de estarmos roubando para o teste passar, esses passos pequenos sÃ£o muito importantes. SÃ£o chamados de baby steps. Baby step Ã© uma tÃ©cnica de metodologias Ã¡geis que facilita a simplicidade do cÃ³digo, pois sÃ³ precisamos desenvolver o que Ã© realmente necessÃ¡rio para passar no teste.

O ciclo do TDD Ã©:
ï¿¼ï¿¼<img src="http://static.flickr.com/33/66281384_4997df55b7_m.jpg" alt="" />

<span>Portanto, agora que os testes estÃ£o passando, vamos refatorar para o cÃ³digo ficar menos hard coded. As linhas:</span>

<span>Snap.hs</span>
<code>
distancia (Ponto 0 0) (Ponto 0 1 ) = 1
distancia (Ponto 0 0) (Ponto 0 2 ) = 2
distancia _ _ = 0
</code>

Podem agora ser substituÃ­das por:
<code> distancia (Ponto 0 a) (Ponto 0 b ) = b-a </code>

Agora nossa regra estÃ¡ funcionando para vÃ©rtices na vertical. PorÃ©m ainda nÃ£o estÃ¡ pronto. Vamos escrever mais um teste:

Tests.hs
<code>
"Distancia entre o ponto 0 0 e 1 0 deveria ser 1" ~:
distancia (Ponto 0 0) (Ponto 1 0 ) ~?= 1
</code>

EstÃ¡ passando 2 testes mas esse Ãºltimo falha. Vamos Ã  implementaÃ§Ã£o para esse teste incluÃ­do passar:

Snap.hs
<code>
distancia :: Ponto -&gt; Ponto -&gt; Int
distancia (Ponto 0 a) (Ponto 0 b ) = b-a
distancia (Ponto a 0) (Ponto b 0 ) = b-a
</code>

Antes sÃ³ passavam os testes para vÃ©rtices na vertical. Agora estÃ¡ passando para vÃ©rtices na horizontal tambÃ©m. Vamos fazer um teste e ver se passa na diagonal. Incluindo isso no teste ficaria:

Tests.hs

<code>
"Distancia entre o ponto 1 0 e 1 1 deveria ser 1" ~:
distancia (Ponto 1 0) (Ponto 1 1 ) ~?= 1
</code>

A implementaÃ§Ã£o para passar nesse teste, ainda roubando, ficaria assim:

Snap.hs

<code>
distancia (Ponto 1 0) (Ponto 1 1 ) = 1
</code>

Essa implementaÃ§Ã£o estÃ¡ hard coded, mas Ã© importante que seja dessa maneira pois precisamos manter o foco em ficar verde no teste, e aÃ­ sim fazer a refatoraÃ§Ã£o.
Ok, como os testes estÃ£o passando novamente e estÃ¡ tudo no verde, vamos refatorar. As linhas:

<code>
distancia (Ponto 0 a) (Ponto 0 b ) = b-a
distancia (Ponto a 0) (Ponto b 0 ) = b-a
distancia (Ponto 1 0) (Ponto 1 1 ) = 1
</code>

Porem ser substituÃ­das pela linha:

<code> distancia (Ponto x1 y1) (Ponto x2 y2 ) = x2-x1 + y2-y1 </code>

Tudo passando! Vamos escrever mais testes para ver se a regra estÃ¡ certa:

Tests.hs
<code>
"Distancia entre o ponto 0 3 e 4 0 deveria ser 5
distancia (Ponto 0 3) (Ponto 4 0 ) ~?= 5
</code>

Com esse teste o resultado falha, portanto a fÃ³rmula acima ainda nÃ£o estÃ¡ pronta. O correto seria implementar o teorema de pitÃ¡goras para calcular a distÃ¢ncia entre os pontos:

Snap.hs

<code>
data Ponto = Ponto Float Float 

distancia :: Ponto -&gt; Ponto -&gt; Float
distancia (Ponto x1 y1) (Ponto x2 y2 ) = sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))
</code>

<strong>Concluindo</strong>

Vamos parar por aqui. O problema ainda nÃ£o estÃ¡ resolvido, mas mostrei esses passos para percebermos a importÃ¢ncia do baby step e como a modelagem pode ficar melhor e com mais qualidade. Para ver o que foi codado, entre no site do Github <a href="http://github.com/dojosp/participant-s-projects/tree/master/60-Snap-Haskell">aqui</a>.

O TDD nos direciona para uma maior <strong>simplicidade</strong> para ser desenvolvido somente o necessÃ¡rio para passar no teste. AlÃ©m de fornecer mais <strong>confianÃ§a</strong> para devidas <strong>refatoraÃ§Ãµes</strong>.

<strong>Retrospectiva</strong>

No final teve, como de costume, a nossaÂ retrospectivaÂ e os pontos a melhorar foram:

â€¢	"NÃ£o precisa do b-a", sobre um dos baby-steps que poderia ser desnecessÃ¡rio
â€¢	"Nano baby step =&gt; seguro mas muito lento". Sobre passos muito pequenos.
â€¢	Alguns passos grandes/rÃ¡pidos em alguns momentos.
â€¢	Faltaram mais explicaÃ§Ãµes sobre o que Ã© baby-step durante o cÃ³digo
â€¢	"Faltou tÃ£o pouco" para terminar o problema. Apesar que esse nÃ£o Ã© o objetivo final do Dojo.+
â€¢	Teve gente que nÃ£o gostou desse esquema de rotaÃ§Ã£o invertido.
â€¢	Projetor estava ruim.
â€¢	Baby-step? NÃ£o "grown-up wannabe steps".
â€¢	Perdemos muito tempo criando templates do projeto.
â€¢	Emacs Ã© melhor que Gedit para codar Haskell

Os pontos positivos foram:

â€¢	Tipos de dados no Haskell
â€¢	Haskell
â€¢	Pessoas gostaram no rodÃ­zio invertido.
â€¢	Problema legal, simples e bom para TDD
â€¢	Baby steps
â€¢	" Ëœ Ã© sempre antes." Â Sobre a notaÃ§Ã£o no Haskell.

Assuntos em Parking lote foram

â€¢	TODOs ajudam ou atrapalham?
â€¢	Geradores do ruby sÃ£o Ã³timos para gerar templates
