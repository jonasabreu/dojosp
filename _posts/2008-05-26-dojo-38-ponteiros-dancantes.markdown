--- 
wordpress_id: 15
layout: post
title: "Dojo 38 - Ponteiros Dan\xC3\x83\xC2\xA7antes"
date: 2008-05-26 15:57:15 -03:00
wordpress_url: http://www.dojosp.epistemol.net/?p=11
---
<ul>
	<li><strong>Data:</strong> 14/Maio/2008</li>
	<li><strong>Participantes:</strong> Breno Franco, Fabricio Sousa, Hugo Corbucci, Jacqueline Marchetti, Leandro Lameiro, Mariana Bravo, Thiago Colucci, Yoshi</li>
	<li><strong>Kata:</strong> <a title="Enunciado do problema" href="http://www.ime.usp.br/~yoshi/2008i/mac323/EPs/EP2/ep2.pdf">Ponteiros DanÃ§antes e ColoraÃ§Ã£o em Grafos, Parte A</a> em C, com o Dojo Unit Test</li>
	<li><strong>Fonte:</strong> http://dojo_sp.googlegroups.com/web/38-pcg.zip</li>
	<li><strong>Fotos</strong>: http://picasaweb.google.com/fabriciosn/Dojo14052008</li>
</ul>
A sessÃ£o comeÃ§ou com uma descriÃ§Ã£o do problema proposto da disciplina de Estruturas de Dados do BCC-IME-USP. O exercÃ­cio consistia de 3 partes, mas o objetivo da apresentaÃ§Ã£o era resolver a primeira parte apenas (que jÃ¡ Ã©, por si sÃ³, bastante interessante e complicada).

Em resumo, o programa recebe um conjunto de elementos principais e secundÃ¡rios e uma sÃ©rie de subconjuntos dele, e quer determinar qual combinaÃ§Ã£o desses subconjuntos permite cobrir os elementos principais, podendo ou nÃ£o cobrir os secundÃ¡rios, mas sem repetiÃ§Ã£o. Um rÃ¡pido exemplo:

Elementos: A B C D E (principais) | E F G (secundÃ¡rios)

Subconjuntos: {A, B, F}, {A, C, G}, {B, E}, {D, F, G} e {D}
<ul>
	<li>Os subconjuntos {A, B, F} e {A, C, G} causam uma repetiÃ§Ã£o do elemento A, isso nÃ£o Ã© permitido.</li>
	<li>Os subconjuntos {D, F, G}, {A, C, G} e {B, E} formam {A, B, C, D, E, F, G, G}, cobrindo todos os principais mas repetindo um secundÃ¡rio. Isso tambÃ©m nÃ£o Ã© uma resposta vÃ¡lida.</li>
	<li>Os subconjuntos {A, C, G}, {B, E} e {D} formam {A, B, C, D, E, G} e sÃ£o uma resposta vÃ¡lida.</li>
</ul>
O algoritmo a ser implementado usa uma estrutura de matriz esparsa maluca em que cada coluna representa um elemento e cada linha representa um subconjunto. A cÃ©lula pode assumir os valores 0 ou 1 se o elemento da coluna estÃ¡ ou nÃ£o no conjunto da linha. A descriÃ§Ã£o do algoritmo estÃ¡ no <a href="http://www.ime.usp.br/~yoshi/2008i/mac323/EPs/EP2/ep2.pdf">enunciado</a>, assim como a descriÃ§Ã£o da estrutura da matriz.

ApÃ³s a explicaÃ§Ã£o do problema e da idÃ©ia por trÃ¡s da estrutura, comeÃ§ou a sessÃ£o de cÃ³digo, guiada pelo apresentador do Kata, o Thiago. A implementaÃ§Ã£o avanÃ§ou em pequenos passos, mas em algum momento o apresentador nÃ£o lembrava como fazer um determinado teste passar, de forma que todos os participantes comeÃ§aram a dar sugestÃµes. As sugestÃµes e tentativas realizadas pareceram um passo grande demais e o grupo nÃ£o conseguiu corrigir o erro atÃ© o fim da sessÃ£o.

EntÃ£o veio a...
<h3>Retrospectiva</h3>
Os principais assuntos discutidos na retrospectiva foram:
<ul>
	<li>Usamos a nova versÃ£o da Dojo Unit, e ela estÃ¡ melhor. O que falta? Algumas das sugestÃµes discutidas podem ser vistas em azul no canto esquerdo superior <a href="http://picasaweb.google.com/fabriciosn/Dojo14052008/photo#5201105656174257794">desta foto</a>.
(A versÃ£o mais recente da Dojo Unit encontra-se no <a href="http://github.com/dojosp/participant-s-projects/tree/master">nosso repositÃ³rio do github</a> e a versÃ£o usada no Dojo 38 pode ser tirada do <a href="http://dojo_sp.googlegroups.com/web/38-pcg.zip">cÃ³digo fonte da sessÃ£o</a>)</li>
	<li>O pessoal gostou de ter um Kata (fazia tempo que ninguÃ©m tomava a iniciativa), mas reconheceu que Ã© bom o apresentador treinar e rever os passos da soluÃ§Ã£o antes de apresentar.</li>
	<li>O problema que enfrentamos no final do Dojo era por conta do uso de <code>strtok</code> e <code>strsep</code>. Um dos participantes sugeriu que eles nÃ£o devem ser usados de maneira recursiva, pois isso causa problemas. Depois da retrospectiva, o apresentador lembrou que usou <code>scanf</code> na soluÃ§Ã£o, ao invÃ©s desses mÃ©todos.</li>
	<li>De novo tivemos problemas com o ambiente - seja por conta do teclado, do editor, do debugger. Discutimos como seria possÃ­vel ter um ambiente mais amigÃ¡vel a todos, sem chegar em nenhuma soluÃ§Ã£o, mas algumas sugestÃµes.</li>
	<li>Tivemos tambÃ©m uma discussÃ£o sobre testes exploratÃ³rios: quando devem ser feitos, devem ou nÃ£o ser apagados? Podemos fazer quando nÃ£o conhecemos o ambiente, por exemplo (como foi o caso com as rotinas strtok e strsep). No Dojo certamente nÃ£o queremos apagar, pois o cÃ³digo mostra para outras pessoas um pouco da evoluÃ§Ã£o do que fizemos na sessÃ£o.</li>
</ul>
TambÃ©m levantamos itens de aÃ§Ã£o (lado superior direto <a href="http://picasaweb.google.com/fabriciosn/Dojo14052008/photo#5201105656174257794">da mesma foto</a>), que jÃ¡ foram cumpridos.

<em>(Nota do escriba: foi mal pelo atraso... nÃ£o deixem de ler o <a href="http://www.dojosp.epistemol.net/?p=12">post do Adolfo, sobre o Dojo 39</a>, ficou bem legal!)</em>
