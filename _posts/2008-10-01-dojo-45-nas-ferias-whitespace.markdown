--- 
wordpress_id: 27
layout: post
title: "Dojo 45 (nas f\xC3\x83\xC2\xA9rias) - Whitespace"
date: 2008-10-01 18:48:15 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=21
---
<p style="text-align: center;"><em>Relato muito bem escrito pelo Breno, mas publicado pela Mari pois o Breno demorou muito pra publicar!
</em></p>

<ul>
	<li><strong>Data:</strong> 4/08/2008</li>
	<li><strong>Participantes:</strong> Thiago, Breno, R</li>
	<li><strong>Sem código no dia</strong></li>
	<li><strong>Ambiente: Ubuntu Linux (Thiago)</strong></li>
</ul>
Não tivemos quórum para um Randori, e como achávamos que não possuíamos muita proficiência em Erlang, e sem querer voltar para C, decidimos usar o dojo do dia 4 para explorar um pouco novas linguagens.

No último Dojo, um das decisões foi que, mesmo que decidíssemos continuar com Erlang, precisaríamos de alguém para atuar como guru, ou não conseguiríamos progredir tão facilmente. Animados com essa idéia, e cursando Inteligência Artificial neste semestre, R e Breno decidiram tentar programar em Prolog com TDD, e propor, mais à frente do semestre, que fosse a linguagem do Dojo por algumas sessões, quando ganharem prática e puderem servir de gurus.

Entretanto, o acesso à Internet no Laptop do Thiago foi feito pela UspNet sem fio, mais lenta do que o acesso via cabo de rede. Enquanto os pacotes do SWI-Prolog eram baixados, verificamos que existe uma Unit Test para Prolog. Mas ela não vem por padrão, devendo ser baixada à parte. Ao baixarmos, era necessário transformar de um pacote Red Hat para um pacote Debian, e o alien, programa responsável por esse passo, se recusava a funcionar adequadamente. Depois de baixar o pacote de novo, procurar por possíveis problemas, etc, nos convencemos que não seria possível disponibilizar um ambiente para Prolog, decidimos chutar o pau da barraca e programar em Whitespace - aliás, surgiu a idéia de fazer um Dojo com linguagens esotéricas.

Apanhamos um pouco, tanto do emacs, que teimava em escrever [SPC] em vez de pôr um espaço na tela e [LF] em vez de enter quando tentamos dar copy-and-paste de um código em Whitespace. Até que percebemos que o emacs estava no modo WS, como do próprio Whitespace, em que toda instrução que usa o topo da pilha também o remove do topo. E, ao fim, conseguimos entender o comportamento das instruções de whitespace melhor do que fazer a instalação da plunit. Coisas da vida.
<h3>Retrospectiva</h3>
<h4>Coisas Legais:</h4>
<ul>
	<li> Existe unit test para Prolog! Mais uma linguagem candidata a participar do Dojo, com possíveis gurus.</li>
	<li>Whitespace é uma espécie de assembly</li>
	<li>Mudar de linguagem é divertido</li>
	<li>Emacs tem até modo whitespace</li>
</ul>
<h4>Coisas Ruins:</h4>
<ul>
	<li>Pouca Gente</li>
	<li>Unit Test de Prolog é meio chata de instalar. Talvez seja melhor pegar o source.</li>
	<li>Quase todo comando de Whitespace faz um pop implícito</li>
</ul>
<h4>Parking Lot:</h4>
<p style="text-align: left;">Idéias de problemas: WebServer e Celular</p>
