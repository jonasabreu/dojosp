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
	<li><strong>Sem cÃ³digo no dia</strong></li>
	<li><strong>Ambiente: Ubuntu Linux (Thiago)</strong></li>
</ul>
NÃ£o tivemos quÃ³rum para um Randori, e como achÃ¡vamos que nÃ£o possuÃ­amos muita proficiÃªncia em Erlang, e sem querer voltar para C, decidimos usar o dojo do dia 4 para explorar um pouco novas linguagens.

No Ãºltimo Dojo, um das decisÃµes foi que, mesmo que decidÃ­ssemos continuar com Erlang, precisarÃ­amos de alguÃ©m para atuar como guru, ou nÃ£o conseguirÃ­amos progredir tÃ£o facilmente. Animados com essa idÃ©ia, e cursando InteligÃªncia Artificial neste semestre, R e Breno decidiram tentar programar em Prolog com TDD, e propor, mais Ã  frente do semestre, que fosse a linguagem do Dojo por algumas sessÃµes, quando ganharem prÃ¡tica e puderem servir de gurus.

Entretanto, o acesso Ã  Internet no Laptop do Thiago foi feito pela UspNet sem fio, mais lenta do que o acesso via cabo de rede. Enquanto os pacotes do SWI-Prolog eram baixados, verificamos que existe uma Unit Test para Prolog. Mas ela nÃ£o vem por padrÃ£o, devendo ser baixada Ã  parte. Ao baixarmos, era necessÃ¡rio transformar de um pacote Red Hat para um pacote Debian, e o alien, programa responsÃ¡vel por esse passo, se recusava a funcionar adequadamente. Depois de baixar o pacote de novo, procurar por possÃ­veis problemas, etc, nos convencemos que nÃ£o seria possÃ­vel disponibilizar um ambiente para Prolog, decidimos chutar o pau da barraca e programar em Whitespace - aliÃ¡s, surgiu a idÃ©ia de fazer um Dojo com linguagens esotÃ©ricas.

Apanhamos um pouco, tanto do emacs, que teimava em escrever [SPC] em vez de pÃ´r um espaÃ§o na tela e [LF] em vez de enter quando tentamos dar copy-and-paste de um cÃ³digo em Whitespace. AtÃ© que percebemos que o emacs estava no modo WS, como do prÃ³prio Whitespace, em que toda instruÃ§Ã£o que usa o topo da pilha tambÃ©m o remove do topo. E, ao fim, conseguimos entender o comportamento das instruÃ§Ãµes de whitespace melhor do que fazer a instalaÃ§Ã£o da plunit. Coisas da vida.
<h3>Retrospectiva</h3>
<h4>Coisas Legais:</h4>
<ul>
	<li> Existe unit test para Prolog! Mais uma linguagem candidata a participar do Dojo, com possÃ­veis gurus.</li>
	<li>Whitespace Ã© uma espÃ©cie de assembly</li>
	<li>Mudar de linguagem Ã© divertido</li>
	<li>Emacs tem atÃ© modo whitespace</li>
</ul>
<h4>Coisas Ruins:</h4>
<ul>
	<li>Pouca Gente</li>
	<li>Unit Test de Prolog Ã© meio chata de instalar. Talvez seja melhor pegar o source.</li>
	<li>Quase todo comando de Whitespace faz um pop implÃ­cito</li>
</ul>
<h4>Parking Lot:</h4>
<p style="text-align: left;">IdÃ©ias de problemas: WebServer e Celular</p>
