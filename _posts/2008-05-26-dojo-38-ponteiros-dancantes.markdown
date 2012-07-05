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
	<li><strong>Kata:</strong> <a title="Enunciado do problema" href="http://www.ime.usp.br/~yoshi/2008i/mac323/EPs/EP2/ep2.pdf">Ponteiros Dançantes e Coloração em Grafos, Parte A</a> em C, com o Dojo Unit Test</li>
	<li><strong>Fonte:</strong> http://dojo_sp.googlegroups.com/web/38-pcg.zip</li>
	<li><strong>Fotos</strong>: http://picasaweb.google.com/fabriciosn/Dojo14052008</li>
</ul>
A sessão começou com uma descrição do problema proposto da disciplina de Estruturas de Dados do BCC-IME-USP. O exercício consistia de 3 partes, mas o objetivo da apresentação era resolver a primeira parte apenas (que já é, por si só, bastante interessante e complicada).

Em resumo, o programa recebe um conjunto de elementos principais e secundários e uma série de subconjuntos dele, e quer determinar qual combinação desses subconjuntos permite cobrir os elementos principais, podendo ou não cobrir os secundários, mas sem repetição. Um rápido exemplo:

Elementos: A B C D E (principais) | E F G (secundários)

Subconjuntos: {A, B, F}, {A, C, G}, {B, E}, {D, F, G} e {D}
<ul>
	<li>Os subconjuntos {A, B, F} e {A, C, G} causam uma repetição do elemento A, isso não é permitido.</li>
	<li>Os subconjuntos {D, F, G}, {A, C, G} e {B, E} formam {A, B, C, D, E, F, G, G}, cobrindo todos os principais mas repetindo um secundário. Isso também não é uma resposta válida.</li>
	<li>Os subconjuntos {A, C, G}, {B, E} e {D} formam {A, B, C, D, E, G} e são uma resposta válida.</li>
</ul>
O algoritmo a ser implementado usa uma estrutura de matriz esparsa maluca em que cada coluna representa um elemento e cada linha representa um subconjunto. A célula pode assumir os valores 0 ou 1 se o elemento da coluna está ou não no conjunto da linha. A descrição do algoritmo está no <a href="http://www.ime.usp.br/~yoshi/2008i/mac323/EPs/EP2/ep2.pdf">enunciado</a>, assim como a descrição da estrutura da matriz.

Após a explicação do problema e da idéia por trás da estrutura, começou a sessão de código, guiada pelo apresentador do Kata, o Thiago. A implementação avançou em pequenos passos, mas em algum momento o apresentador não lembrava como fazer um determinado teste passar, de forma que todos os participantes começaram a dar sugestões. As sugestões e tentativas realizadas pareceram um passo grande demais e o grupo não conseguiu corrigir o erro até o fim da sessão.

Então veio a...
<h3>Retrospectiva</h3>
Os principais assuntos discutidos na retrospectiva foram:
<ul>
	<li>Usamos a nova versão da Dojo Unit, e ela está melhor. O que falta? Algumas das sugestões discutidas podem ser vistas em azul no canto esquerdo superior <a href="http://picasaweb.google.com/fabriciosn/Dojo14052008/photo#5201105656174257794">desta foto</a>.
(A versão mais recente da Dojo Unit encontra-se no <a href="http://github.com/dojosp/participant-s-projects/tree/master">nosso repositório do github</a> e a versão usada no Dojo 38 pode ser tirada do <a href="http://dojo_sp.googlegroups.com/web/38-pcg.zip">código fonte da sessão</a>)</li>
	<li>O pessoal gostou de ter um Kata (fazia tempo que ninguém tomava a iniciativa), mas reconheceu que é bom o apresentador treinar e rever os passos da solução antes de apresentar.</li>
	<li>O problema que enfrentamos no final do Dojo era por conta do uso de <code>strtok</code> e <code>strsep</code>. Um dos participantes sugeriu que eles não devem ser usados de maneira recursiva, pois isso causa problemas. Depois da retrospectiva, o apresentador lembrou que usou <code>scanf</code> na solução, ao invés desses métodos.</li>
	<li>De novo tivemos problemas com o ambiente - seja por conta do teclado, do editor, do debugger. Discutimos como seria possível ter um ambiente mais amigável a todos, sem chegar em nenhuma solução, mas algumas sugestões.</li>
	<li>Tivemos também uma discussão sobre testes exploratórios: quando devem ser feitos, devem ou não ser apagados? Podemos fazer quando não conhecemos o ambiente, por exemplo (como foi o caso com as rotinas strtok e strsep). No Dojo certamente não queremos apagar, pois o código mostra para outras pessoas um pouco da evolução do que fizemos na sessão.</li>
</ul>
Também levantamos itens de ação (lado superior direto <a href="http://picasaweb.google.com/fabriciosn/Dojo14052008/photo#5201105656174257794">da mesma foto</a>), que já foram cumpridos.

<em>(Nota do escriba: foi mal pelo atraso... não deixem de ler o <a href="http://www.dojosp.org/2008/05/24/dojo-39-empilhando-as-caixas.html">post do Adolfo, sobre o Dojo 39</a>, ficou bem legal!)</em>
