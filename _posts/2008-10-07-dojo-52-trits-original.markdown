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
	<li><strong>Randori</strong>: Problema Setun (ou conhecido também chamado de Trits original), retirado da segunda seletiva da XII Maratona de Programação da USP. Utilizamos Haskell com HUnit.</li>
	<li><strong>Carta de criatividade:</strong> "Find What's out of Whack"</li>
	<li><strong>Código</strong>: http://github.com/dojosp/participant-s-projects/tree/master/52-setun</li>
</ul>
O problema: receber um número inteiro e devolver sua representação em uma base ternária, cujos algarismos válidos são "+", "0" e "-" (de valor, respectivamente, 1, 0 e -1). Um número nesta base ternária (ou seja, um "trit") representado como a<span style="vertical-align:sub; font-size: 70%">1</span>a<span style="vertical-align:sub; font-size: 70%">2</span>â€¦a<span style="vertical-align:sub; font-size: 70%">k</span> tem valor igual a a<span style="vertical-align:sub; font-size: 70%">1</span>3<span style="vertical-align:super; font-size: 70%">k</span> + a<span style="vertical-align:sub; font-size: 70%">2</span>3<span style="vertical-align:super; font-size: 70%">(k-1)</span> + â€¦ + a<span style="vertical-align:sub; font-size: 70%">k-1</span>3<span style="vertical-align:super; font-size: 70%">1</span> + a<span style="vertical-align:sub; font-size: 70%">k</span>3<span style="vertical-align:super; font-size: 70%">0</span>. Por exemplo, o trit "+0-" tem valor 1*3<span style="vertical-align:super; font-size: 70%">2</span> + 0*3<span style="vertical-align:super; font-size: 70%">1</span> + (-1)*3<span style="vertical-align:super; font-size: 70%">0</span> = 8.

Após resolvermos em um dojo passado o problema inverso, ou seja, dado um número formado por Trits, convertê-lo para a base decimal, resolvemos encarar o problema original (denominado de Setun).

Iniciamos uma pequena discussão de qual seria a abordagem ideal. Assim ficou decidido que necessitaríamos de uma função que dado um número, retornasse a maior potência de três deste número. Começamos daí.
<h3>Codando</h3>
Apesar da abordagem "mandar" fazermos uma função que nos dava a maior potência de três de um número, ficou muito claro para todos que, na verdade, cada um tinha entendido uma coisa do que fazer de verdade. Portanto os primeiros a codarem levaram o problema para o lado de que a maior potência era o maior expoente com base três que coubesse no número dado. No entanto os que vieram depois entenderam que era o resultado de três elevado a este expoente.

Esta confusão no levou a um impasse de tal forma que chegou um momento que todos estavam "palpitando" no código, e os "coders" lá da frente ficaram perdidos e travados. Foi então que percebemos que havia algo muito errado, mas não paramos para tomar nenhuma atitude. Ao invés disso seguimos em frente com testes e código.
Mas já era tarde e não evoluímos muito mais, terminamos com uma função que devolvia potência propriamente dita e não o expoente de três. Além desta função, não andamos muito na resolução do problema propriamente dito.
<h3>Retrospectiva</h3>
Como tínhamos decidido no dojo anterior, iríamos pensar mais nos problemas do dojo (Post-its vermelhos) do que nas coisas que estão andando bem.

Dentre os pontos positivos mencionados:
<ul>
	<li>Elogios à Haskell, principalmente ao fato de podermos escrever "x | x &lt; 3" lendo "x, tal que x menor que 3";</li>
	<li>Atalhos do Emacs;</li>
	<li>O equipamento de modelar vidro finalmente chegou para o Yoshi, ampulheta do Dojo em breve;</li>
	<li>Aprendemos bastante sobre o problema;</li>
	<li>Fizemos um git reverse na mão;</li>
</ul>
Dos pontos negativos, foram citados:
<ul>
	<li>Não definimos e seguimos uma abordagem única;</li>
	<li>Atrasos de pessoas;</li>
	<li>git revert não funcionou;</li>
	<li>Deveríamos usar o TAB no Emacs, ele identa;</li>
	<li>Perdemos tempo fazendo otimizações, ou pensando nelas;</li>
	<li>Desatenção fez com que escrevêssemos testes "inúteis";</li>
	<li>"O que fazer quando os testes saem dos trilhos?";</li>
	<li>Pessoas perdidas durante a resolução;</li>
	<li>Planejamento foi furado;</li>
</ul>
Ficamos ainda com algumas discussões para o Parking lot, como sempre.
<ul>
	<li>TV Dojo: Muitas pessoas de fora do dojo estão nos pressionando para criarmos algum vídeo para que eles possam assistir como é o nosso Dojo. Ficou decidido que iríamos dar um jeito de arrumar ao menos duas câmeras para filmarmos uma sessão, sessão esta que seria uma espécie de Randori//Kata, pois iríamos resolver um problema já conhecido e de fácil entendimento para todos, mas seria resolvido no estilo Randori.</li>
	<li>Dojo em silêncio é igual a Dojo pouco produtivo? A resposta geral foi não. O fato do problema ser "enrolado" e a abordagem-mal-desenhada foi o que gerou o silêncio e o pouco desenvolvimento de código, a lição foi: problema simples (pequeno) não significa problema fácil.</li>
</ul>
