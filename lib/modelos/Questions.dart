class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": " O que é Scrum?",
    "options": [
      ' Scrum, ou Kanban, é uma ferramenta que guia os colaboradores para melhores práticas no projeto. ',
      ' É uma metodologia ágil que auxilia no desenvolvimento de projetos. ',
      ' Scrum pode ser considerado uma metodologia ágil para fazer melhores descobertas de talentos; ',
    ],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Qual das alternativas abaixo não corresponde ao scrum?",
    "options": [
      'As tarefas são individuais,mas todo o time é responsável por ela.',
      'As equipes são auto organizáveis.',
      'As tarefas são coletivas e apenas o PO tem responsabilidade por elas.'
    ],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "Quais são os 3 pilares do SCRUM?",
    "options": [
      'Transparência, Inspiração e Adequação.',
      'Transparência, Inspeção e Adaptação.',
      'Transcendência, Inspeção e Adequação.'
    ],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "O que é o Product Backog?",
    "options": [
      'Lista ordenada de tudo que deve ser necessário no produto.',
      'Lista ordenada de tudo que o produto vai realizar.',
      'Lista ordenada de tudo que o cliente não quer.'
    ],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Em relação ao time Dev é correto afirmar que: ",
    "options": [
      'são responsáveis por liderar o time ',
      'são responsáveis por priorizar o Product Backlog',
      'são responsáveis por desenvolver o produto.'
    ],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question":
        " Time-box de 15 min que deve acontecer diariamente, de preferência no mesmo local e horário é correspondente a qual das alternativas?  ",
    "options": [' Daily Scrum  ', ' Sprint Review ', ' Sprint Retrospective'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": " Na Daily Scrum as reuniões são realizadas em que posição?  ",
    "options": [' Sentado ', ' De costas ', ' Em pé. '],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "Por que o Daily Scrum é realizado em pé? ",
    "options": ['Como um sinal de respeito', 'Para evitar prolongamento', 'Para ajudar no ânimo do time.'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Função de qual papel: Define os Story Points  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "Função de qual papel: Esclarece para o time o valor que cada item na backlog agrega  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 0,
  },
  {
    "id": 11,
    "question": "Função de qual papel: Atuar como gerente de projetos ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 3,
  },
  {
    "id": 12,
    "question": "Função de qual papel: Buscar descobrir qual é o problema que estamos tentando resolver  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question": "Função de qual papel: Ser um agente de mudança e líder servidor  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 1,
  },
  {
    "id": 14,
    "question": "Função de qual papel: Ser um time multidisciplinar e auto-organizado  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 2,
  },
  {
    "id": 15,
    "question": "Função de qual papel: Fazer o Time Scrum entender os propósitos das cerimônias do Scrum  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question": "Função de qual papel: Priorizar os itens de backlog de forma a maximizar o valor do produto  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 0,
  },
  {
    "id": 17,
    "question": "Função de qual papel: Ser responsável pelo Status Report com o andamento das atividades   ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 3,
  },
  {
    "id": 18,
    "question": "Função de qual papel: Gerenciar o trabalho do time de desenvolvimento ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 3,
  },
  {
    "id": 19,
    "question": "Função de qual papel: Descartar itens de backlog que não fazem mais sentido para a realidade ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 0,
  },
  {
    "id": 20,
    "question": "Função de qual papel: Ajudar o time a resolver impedimentos  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 1,
  },
  {
    "id": 21,
    "question": "Função de qual papel: Ajudar o Time Scrum entender os propósitos das cerimônias do Scrum  ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 1,
  },
  {
    "id": 21,
    "question": "Função de qual papel: Apresentar o incremento do produto na Sprint Review ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 2,
  },
  {
    "id": 23,
    "question": "Função de qual papel: Ser responsável por facilitar as retrospectivas ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 1,
  },
  {
    "id": 24,
    "question": "Função de qual papel: Participação obrigatória na Daily Scrum ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 2,
  },
  {
    "id": 24,
    "question": "Função de qual papel: Cancelar a sprint quando o objetivo não faz mais sentido ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 0,
  },
  {
    "id": 25,
    "question": "Função de qual papel: Determinar tecnicamente como o produto será desenvolvido ",
    "options": [' PO ', ' SM', ' Time DEV.', 'Nenhuma das anteriores'],
    "answer_index": 2,
  },
];
