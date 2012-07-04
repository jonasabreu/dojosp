--- 
wordpress_id: 28
layout: post
title: Dojo 52 - Trits original
date: 2008-10-07 11:19:40 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=28
---
<p style="text-align: center;"><em>Mais um relato pelo Thiago. Muito bem &amp; muito obrigada!! XD
</em></p>

<ul>
	<li><strong>Data</strong>: 22/09/2008</li>
	<li><strong>Participantes</strong>: Thiago, R, Hugo, Mari, Leo, Yoshi e Breno</li>
	<li><strong>Randori</strong>: Problema Setun (ou conhecido tambÃ©m chamado de Trits original), retirado da segunda seletiva da XII Maratona de ProgramaÃ§Ã£o da USP. Utilizamos Haskell com HUnit.</li>
	<li><strong>Carta de criatividade:</strong> "Find What's out of Whack"</li>
	<li><strong>CÃ³digo</strong>: http://github.com/dojosp/participant-s-projects/tree/master/52-setun</li>
</ul>
O problema: receber um nÃºmero inteiro e devolver sua representaÃ§Ã£o em uma base ternÃ¡ria, cujos algarismos vÃ¡lidos sÃ£o "+", "0" e "-" (de valor, respectivamente, 1, 0 e -1). Um nÃºmero nesta base ternÃ¡ria (ou seja, um "trit") representado como a<span style="vertical-align:sub; font-size: 70%">1</span>a<span style="vertical-align:sub; font-size: 70%">2</span>â€¦a<span style="vertical-align:sub; font-size: 70%">k</span> tem valor igual a a<span style="vertical-align:sub; font-size: 70%">1</span>3<span style="vertical-align:super; font-size: 70%">k</span> + a<span style="vertical-align:sub; font-size: 70%">2</span>3<span style="vertical-align:super; font-size: 70%">(k-1)</span> + â€¦ + a<span style="vertical-align:sub; font-size: 70%">k-1</span>3<span style="vertical-align:super; font-size: 70%">1</span> + a<span style="vertical-align:sub; font-size: 70%">k</span>3<span style="vertical-align:super; font-size: 70%">0</span>. Por exemplo, o trit "+0-" tem valor 1*3<span style="vertical-align:super; font-size: 70%">2</span> + 0*3<span style="vertical-align:super; font-size: 70%">1</span> + (-1)*3<span style="vertical-align:super; font-size: 70%">0</span> = 8.

ApÃ³s resolvermos em um dojo passado o problema inverso, ou seja, dado um nÃºmero formado por Trits, convertÃª-lo para a base decimal, resolvemos encarar o problema original (denominado de Setun).

Iniciamos uma pequena discussÃ£o de qual seria a abordagem ideal. Assim ficou decidido que necessitarÃ­amos de uma funÃ§Ã£o que dado um nÃºmero, retornasse a maior potÃªncia de trÃªs deste nÃºmero. ComeÃ§amos daÃ­.
<h3>Codando</h3>
Apesar da abordagem "mandar" fazermos uma funÃ§Ã£o que nos dava a maior potÃªncia de trÃªs de um nÃºmero, ficou muito claro para todos que, na verdade, cada um tinha entendido uma coisa do que fazer de verdade. Portanto os primeiros a codarem levaram o problema para o lado de que a maior potÃªncia era o maior expoente com base trÃªs que coubesse no nÃºmero dado. No entanto os que vieram depois entenderam que era o resultado de trÃªs elevado a este expoente.

Esta confusÃ£o no levou a um impasse de tal forma que chegou um momento que todos estavam "palpitando" no cÃ³digo, e os "coders" lÃ¡ da frente ficaram perdidos e travados. Foi entÃ£o que percebemos que havia algo muito errado, mas nÃ£o paramos para tomar nenhuma atitude. Ao invÃ©s disso seguimos em frente com testes e cÃ³digo.
Mas jÃ¡ era tarde e nÃ£o evoluÃ­mos muito mais, terminamos com uma funÃ§Ã£o que devolvia potÃªncia propriamente dita e nÃ£o o expoente de trÃªs. AlÃ©m desta funÃ§Ã£o, nÃ£o andamos muito na resoluÃ§Ã£o do problema propriamente dito.
<h3>Retrospectiva</h3>
Como tÃ­nhamos decidido no dojo anterior, irÃ­amos pensar mais nos problemas do dojo (Post-its vermelhos) do que nas coisas que estÃ£o andando bem.

Dentre os pontos positivos mencionados:
<ul>
	<li>Elogios Ã  Haskell, principalmente ao fato de podermos escrever "x | x &lt; 3" lendo "x, tal que x menor que 3";</li>
	<li>Atalhos do Emacs;</li>
	<li>O equipamento de modelar vidro finalmente chegou para o Yoshi, ampulheta do Dojo em breve;</li>
	<li>Aprendemos bastante sobre o problema;</li>
	<li>Fizemos um git reverse na mÃ£o;</li>
</ul>
Dos pontos negativos, foram citados:
<ul>
	<li>NÃ£o definimos e seguimos uma abordagem Ãºnica;</li>
	<li>Atrasos de pessoas;</li>
	<li>git revert nÃ£o funcionou;</li>
	<li>DeverÃ­amos usar o TAB no Emacs, ele identa;</li>
	<li>Perdemos tempo fazendo otimizaÃ§Ãµes, ou pensando nelas;</li>
	<li>DesatenÃ§Ã£o fez com que escrevÃªssemos testes "inÃºteis";</li>
	<li>"O que fazer quando os testes saem dos trilhos?";</li>
	<li>Pessoas perdidas durante a resoluÃ§Ã£o;</li>
	<li>Planejamento foi furado;</li>
</ul>
Ficamos ainda com algumas discussÃµes para o Parking lot, como sempre.
<ul>
	<li>TV Dojo: Muitas pessoas de fora do dojo estÃ£o nos pressionando para criarmos algum vÃ­deo para que eles possam assistir como Ã© o nosso Dojo. Ficou decidido que irÃ­amos dar um jeito de arrumar ao menos duas cÃ¢meras para filmarmos uma sessÃ£o, sessÃ£o esta que seria uma espÃ©cie de Randori//Kata, pois irÃ­amos resolver um problema jÃ¡ conhecido e de fÃ¡cil entendimento para todos, mas seria resolvido no estilo Randori.</li>
	<li>Dojo em silÃªncio Ã© igual a Dojo pouco produtivo? A resposta geral foi nÃ£o. O fato do problema ser "enrolado" e a abordagem-mal-desenhada foi o que gerou o silÃªncio e o pouco desenvolvimento de cÃ³digo, a liÃ§Ã£o foi: problema simples (pequeno) nÃ£o significa problema fÃ¡cil.</li>
</ul>
