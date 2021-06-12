import 'package:flutter/material.dart';
import 'package:dynamics_pi/widgets/appbar.dart';
import 'package:dynamics_pi/widgets/grid_produtos.dart';

class Aulas extends StatefulWidget {
  @override
  _AulasState createState() => _AulasState();
}

class _AulasState extends State<Aulas> {
  final List Aula = [
    {
      "titulo": "Manifesto Ágil",
      "foto": "1manifesto.jpeg",
      "descricao":
          "Estamos descobrindo maneiras melhores de desenvolver software, fazendo-o nós mesmos e ajudando outros a fazerem o mesmo. Através deste trabalho, passamos a valorizar:\n\nINDIVÍDUOS E INTERAÇÕES mais que processos e ferramentas\n\nSOFTWARE EM FUNCIONAMENTO mais que documentação abrangente\n\nCOLABORAÇÃO COM O CLIENTE mais que negociação de contratos\n\nRESPONDER A MUDANÇAS mais que seguir um plano\n\nOu seja, mesmo havendo valor nos itens à direita,valorizamos mais os itens à esquerda.",
      "imagemInterna": "Dynamics.png",
    },
    {
      "titulo": "Método Ágil",
      "foto": "agile.png",
      "descricao":
          "Metodos ágeis são conjuntos de práticas que proporcionam uma forma de gerenciar projetos mais adaptável às mudanças. Elas são estruturadas em ciclos curtos sendo que, a cada novo ciclo, é entregue um conjunto de funcionalidades pré-determinado. Portanto, as metodologias ágeis têm como principal restrição o tempo e são caracterizadas por produzirem entregas rápidas e frequentes.",
      "imagemInterna": "Dynamics.png",
    },
    {
      "titulo": "Método Cascata",
      "foto": "waterfall.png",
      "descricao":
          "O Método Cascata (modelo Waterfall), conhecido também como método tradicional, é uma forma de gerenciamento de projetos que utiliza fases sequenciais, longo planejamento, projetos com custos, escopo e cronograma fixos.\n\nUtilizado desde a Segunda Guerra Mundial, esse método de gerenciamento vai abranger fases básicas que são: planejamento, execução, validação e entrega.\n\nPor ser realizado em etapas sequenciais, o método cascata prevê que o projeto só avance a partir do momento que uma etapa se finde, sendo que cada uma delas só poderá seguir a partir da aprovação dos stakeholders. ",
      "imagemInterna": "Dynamics.png",
    },
    {
      "titulo": "Ágil vs Cascata",
      "foto": "agilesVSwaterfall.jpg",
      "descricao":
          "Depois de rememorar os conceitos e verificar os pontos fortes e fracos dos modelos Cascata e Ágil, vamos agora colocá-los lado a lado para evidenciar suas diferenças. Confira:\n\n      -O processo de desenvolvimento de software é dividido em diferentes fases no modelo Cascata, enquanto a metodologia Ágil separa o ciclo de vida de desenvolvimento do projeto em sprints;\n      -Cascata é uma metodologia estruturada que muitas vezes pode ser bastante rígida, enquanto a metodologia Agile é conhecida por sua flexibilidade;\n      -No modelo Cascata, o desenvolvimento de software deve ser concluído como um único projeto, que é então dividido em diferentes fases. No entanto, a metodologia Ágil pode ser considerada como uma coleção de muitos projetos diferentes, que nada mais são do que as iterações das diferentes fases com foco na melhoria geral do software com feedbacks dos usuários ou da equipe de qualidade;\n      -No modelo Cascata, não há espaço para alterar os requisitos uma vez iniciado o desenvolvimento do projeto. A metodologia Ágil, por outro lado, é bastante flexível e permite que sejam feitas mudanças nos requisitos de desenvolvimento do projeto, mesmo após o planejamento inicial ter sido concluído;\n      -Todas as fases de desenvolvimento do projeto, como design, desenvolvimento, testes etc. são concluídas uma vez no modelo Cascata, enquanto que, como parte da metodologia Ágil, elas seguem uma abordagem de desenvolvimento iterativo. Como resultado, planejamento, desenvolvimento, prototipagem e outras fases podem aparecer mais de uma vez durante todo o ciclo de vida do desenvolvimento;\n     -Uma das principais diferenças entre Ágil e Cascata é sua abordagem individual em relação à qualidade e aos testes. No modelo Cascata, a fase de teste vem depois da fase de construção, mas, na metodologia Ágil, o teste é tipicamente executado simultaneamente com a programação ou pelo menos na mesma iteração;\n      -O modelo Cascata é um processo interno e não exige a participação de clientes; a abordagem Ágil se concentra na satisfação do cliente e, portanto, envolve a participação dele durante praticamente todo o projeto.\n\n\nCONCLUSÃO:\n\nComo você deve ter concluído ao longo da leitura, o modelo Cascata pode ser considerado como um processo sequencial rigoroso, enquanto o modelo Ágil é um processo altamente colaborativo, levando a uma melhor participação da equipe e à resolução mais rápida de problemas.\n\nO modelo Cascata é mais adequado para projetos que têm requisitos claramente definidos e nos quais a mudança não é esperada, enquanto o desenvolvimento Ágil suporta um processo no qual os requisitos devem mudar e evoluir. Assim, se você estiver planejando desenvolver um software que exigiria revisões frequentes e tiver que acompanhar o panorama tecnológico e os requisitos do cliente, o Ágil é a melhor abordagem a seguir.\n\nPor fim, acrescentamos que modelo Cascata exibe uma mentalidade de projeto e foca seu foco estritamente na conclusão do desenvolvimento, enquanto a metodologia Ágil introduz uma mentalidade de produto que se concentra em garantir que a aplicação desenvolvida satisfaça seus clientes finais e se modifica conforme os requisitos mudam.",
      "imagemInterna": "agilesVSwaterfallret.jpg",
    },
    {
      "titulo": "O que é SCRUM?",
      "foto": "SCRUMAZUL.png",
      "descricao":
          "Scrum é um framework leve que ajuda pessoas, times e organizações a gerar valor através de soluções adaptativas para problemas complexos.\n\nScrum é um processo empírico, baseado pura e simplesmente nas experiências passadas de seus criadores que desde o início da década de 90 aplicam Scrum em projetos de software com sucesso, já sendo uma das metodologias ágeis mais usadas no mundo. E uma vez que você se torna adepto do Scrum, o empirismo passa a fazer com que você respeite o processo cada vez mais e adicione novos processos e artefatos complementares baseados nas SUAS experiências com o mesmo.",
      "imagemInterna": "Dynamics.png",
    },
    {
      "titulo": "Os Pilares",
      "foto": "1pilares.jpeg",
      "descricao":
          "O Scrum se baseia em três pilares de sustentação, suas ideologias:\n\n\nTransparência:\n\nAspectos significativos do processo devem estar visíveis aos responsáveis pelos resultados.\n\nInspeção:\n\nOs usuários Scrum devem, frequentemente, inspecionar os artefatos Scrum e o progresso em direção a detectar variações. Esta inspeção não deve, no entanto, ser tão frequente que atrapalhe a própria execução das tarefas.\n\n\nAdaptação\n\nSe um ou mais aspectos de um processo desviou para fora dos limites aceitáveis ou produto não será inaceitável, o processo ou o material sendo produzido deve ser ajustado.",
      "imagemInterna": "pilaress.jpg",
    },
    {
      "titulo": "Os Papéis",
      "foto": "1papeis.jpeg",
      "descricao":
          "PO:\n\nO Product Owner é responsável por maximizar o valor do produto resultante do trabalho do Scrum Team. A forma como isso é feito pode variar amplamente entre organizações, Scrum Teams e indivíduos.\n\n\nO PO tem como responsabilidade o gerenciamento eficaz do Product Backlog, que inclui:\n\n      -Desenvolver e comunicar explicitamente a meta do produto; \n      -Criar e comunicar claramente os itens do Product Backlog;\n      -Ordenar os itens do Product Backlog;\n      -Garantir que o Product Backlog seja transparente, visível e compreensível.\n\nEsses serviços podem ser feitos pelo próprio PO, ou por outros, desde que seja delegado pelo PO.\n\n\nSM\n\nO Scrum Master é responsável por estabelecer o Scrum conforme definido no Guia do Scrum. Eles fazem isso ajudando todos a entender a teoria e a prática do Scrum, tanto no Scrum Team quanto na organização.\n\n\nÉ o responsável por aplicar e garantir a adoção do Scrum dentro da equipe e até mesmo dentro da organização onde estão inseridos. Cabe ao Scrum Master, que é um líder-servidor, liderar o time para que os objetivos do Product Owner sejam alcançados e para que o time de desenvolvimento consiga avançar sem impedimentos, removendo-os quando necessário, além de garantir que todos os eventos Scrum ocorram e sejam positivos, produtivos e mantidos dentro do timebox.\n\nO Scrum Master serve ao Scrum Team de várias maneiras, incluindo:\n\n      -Treinar os membros do time em autogerenciamento e cross-funcionalidade;\n\n      -Ajudar o Scrum Team a se concentrar na criação de incrementos de alto valor que atendem à Definição de Pronto;\n\n      -Provocando a remoção de impedimentos ao progresso do Scrum Team;\n\n      -Garantir que todos os eventos Scrum ocorram e sejam positivos, produtivos e mantidos dentro do Timebox.\n\n\nDesenvolvedores\n\nSão os responsáveis por desenvolver o produto. O time de desenvolvedores está comprometido em criar qualquer aspecto de um Incremento utilizável a cada Sprint.\n\n\nAs habilidades específicas necessárias pelos desenvolvedores geralmente são amplas e variam de acordo com o domínio de trabalho. No entanto, os desenvolvedores são sempre responsáveis por:\n\n      -Criar um plano para a Sprint, o Sprint Backlog; \n\n      -Introduzir gradualmente qualidade aderindo a uma Definição de Pronto; \n\n      -Adaptar seu plano a cada dia em direção à meta da Sprint;\n\n      -Responsabilizar-se mutuamente como profissionais.",
      "imagemInterna": "papeiss.jpg",
    },
    {
      "titulo": "Os Eventos",
      "foto": "eventoshome.jpg",
      "descricao":
          "O Scrum chama seus eventos de time-boxes, uma vez que são eventos de duração fechada. Um evento pode ser encerrado em tempo menor do que o previsto, mas nunca maior, e o Scrum Master deve garantir isso enquanto facilitador dos eventos.\n\n\nSprint\n\nAs sprints são time-boxes de 1 mês ou menos e são o coração do Scrum. Durante o período da Sprint um incremento utilizável do produto é criado. Mas nem só de desenvolvimento vive a Sprint, fazendo parte da mesma também o planejamento, as reuniões diárias, a revisão e a retrospectiva.\n\nAs sprints são planejadas em um time box de até 8h para uma sprint de um mês.\n\nDurante a Sprint:\n\n      -Nenhuma mudança é feita que coloque em risco a meta da Sprint;\n      -A qualidade não diminui;\n      -O Product Backlog é refinado conforme necessário;\n      -O escopo pode ser esclarecido e renegociado com o Product Owner conforme mais é aprendido.\n\n\nDaily Scrum\n\nTime-box de 15 min que deve acontecer diariamente, de preferência no mesmo local e horário para gerar consistência e evitar perda de tempo. Geralmente em times novos, o Scrum Master facilita esta reunião. Nela, que popularmente é feita em pé (para evitar prolongamentos e distrações), cada Desenvolvedor responde costuma responder apenas três perguntas: o que eu fiz ontem, o que eu vou fazer hoje e se tem algo me impedindo. Você pode ter outras perguntas e dinâmicas, mas isto é o mais comum.\n\n\nSprint Planning\n\nA Sprint Planning inicia a Sprint ao definir o trabalho a ser realizado na Sprint. Este plano resultante é criado pelo trabalho colaborativo de todo o Scrum Team.\n\nO Product Owner garante que os participantes estejam preparados para discutir os itens mais importantes do Product Backlog e como eles são mapeados para a Meta do Produto. O Scrum Team também pode convidar outras pessoas para participar da Sprint Planning para fornecer conselhos.\n\n\nSprint Review\n\nO propósito da Sprint Review é inspecionar o resultado da Sprint e determinar as adaptações futuras. O Scrum Team apresenta os resultados de seu trabalho para os principais stakeholders e o progresso em direção a Meta do Produto é discutido.\n\nDurante o evento, o Scrum Team e os stakeholders revisam o que foi realizado na Sprint e o que mudou em seu ambiente. Com base nessas informações, os participantes colaboram sobre o que fazer a seguir. O Product Backlog também pode ser ajustado para atender a novas oportunidades.\n\nA Sprint Review é uma sessão de trabalho e o Scrum Team deve evitar limitá-la a uma apresentação. A Sprint Review é o penúltimo evento da Sprint e tem um Timebox com prazo máximo de quatro horas para uma Sprint de um mês. Para Sprints mais curtas, o evento geralmente é mais curto.\n\n\nSprint Retrospective\n\nO propósito da Sprint Retrospective é planejar maneiras de aumentar a qualidade e a eficácia.\n\nDurante um time-box de no máximo 3h Scrum Team inspeciona como foi a última Sprint em relação a indivíduos, interações, processos, ferramentas e sua Definição de Pronto. Os elementos inspecionados geralmente variam com o domínio de trabalho. As suposições que os desviaram são identificadas e suas origens exploradas. O Scrum Team discute o que deu certo durante a Sprint, quais problemas encontraram e como esses problemas foram (ou não) resolvidos ",
      "imagemInterna": "eventos.png",
    },
    {
      "titulo": "Os Artefatos",
      "foto": "1artefatos.jpeg",
      "descricao":
          "Os artefatos do Scrum representam trabalho ou valor. Eles são projetados para maximizar a transparência das principais informações. Assim, todos os que os inspecionam têm a mesma base para adaptação. Cada artefato contém um compromisso para garantir que ele forneça informações que aumentem a transparência e o foco contra o qual o progresso pode ser medido:\n\n      -Para o Product Backlog, é a Meta do produto.\n      -Para o Sprint Backlog, é a Meta da Sprint.\n      -Para o incremento, é a Definição de Pronto\n\n\nProduct Backlog\n\nLista ordenada de tudo que deve ser necessário no produto, e é uma origem única dos requisitos para qualquer mudança a ser feita no produto. De responsabilidade do Product Owner, que faz a sua gestão a todo momento, o product backlog deve ser mantido longe do dia a dia do time de desenvolvimento, para evitar dispersão.\n\nO Product Backlog refinement é o ato de quebrar e incluir definição adicional aos itens do Product Backlog para ter itens menores e mais precisos. Esta é uma atividade contínua para adicionar detalhes, como descrição, ordem e tamanho. Os atributos geralmente variam de acordo com o domínio de trabalho.\n\nA Meta do Produto é o objetivo de longo prazo para o Scrum Team. Eles devem cumprir (ou abandonar) um objetivo antes de assumir o próximo.\n\n\nSprint Backlog\n\nO Sprint Backlog é um plano feito por e para o time dev. É uma imagem altamente visível, em tempo real do trabalho que os desenvolvedores planejam realizar durante a Sprint para atingir a Meta da Sprint. Consequentemente, o Sprint Backlog é atualizado ao longo da Sprint conforme mais é aprendido. Deve ter detalhes suficientes para que eles possam inspecionar seu progresso na Daily Scrum.\n\nA Meta da Sprint é criada durante o evento Sprint Planning e então adicionada ao Sprint Backlog. Conforme os desenvolvedores trabalham durante a Sprint, eles mantêm a Meta da Sprint em mente. Se o trabalho acabar sendo diferente do que eles esperavam, eles colaboram com o Product Owner para negociar o escopo do Sprint Backlog dentro da Sprint sem afetar a Meta da Sprint.\n\n\nIncremento\n\nUm incremento é um trampolim concreto em direção a Meta do produto. Cada incremento é adicionado a todos os incrementos anteriores e completamente verificados, garantindo que todos os incrementos funcionem juntos. A fim de fornecer valor, o incremento deve ser utilizável.\n\nVários incrementos podem ser criados em uma Sprint. A soma dos incrementos é apresentada na Sprint Review, apoiando assim o empirismo. No entanto, um incremento pode ser entregue aos stakeholders antes do final da Sprint. A Sprint Review nunca deve ser considerada um marco para liberar valor.\n\nO trabalho não pode ser considerado parte de um incremento a menos que atenda a Definição de Pronto.\n\nA Definição de Pronto é uma descrição formal do estado do Incremento quando ela atende às medidas de qualidade exigidas para o produto. ",
      "imagemInterna": "artefatoss.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustomizada(titulo: 'Dynamics'),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 20, top: 10, bottom: 10),
                  child: Divider(),
                ),
              ),
              Text('Aulas'),
              Expanded(
                  child: Container(margin: EdgeInsets.only(left: 20, right: 30, top: 10, bottom: 10), child: Divider()))
            ],
          ),
          Flexible(
            child: GridProdutos(
              atualiza: atualiza,
              moveis: Aula,
            ),
          )
        ],
      ),
    );
  }

  void atualiza() {
    setState(() {});
  }
}
