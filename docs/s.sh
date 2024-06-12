# Função para criar arquivos e adicionar conteúdo básico
criar_pagina() {
  local nome="$1"
  touch "$nome.md"
  echo "# $nome" > "$nome.md"
  echo "\n## Em construção\n" >> "$nome.md"
  echo "Esta página ainda está sendo desenvolvida. Aguarde por mais informações em breve!" >> "$nome.md"
}

# Criação das páginas principais
criar_pagina "index"
criar_pagina "historia"
criar_pagina "vantagens_desvantagens"
criar_pagina "agua"
criar_pagina "aditivos"
criar_pagina "normas"
criar_pagina "lajes"
criar_pagina "vigas"
criar_pagina "pilares"
criar_pagina "fundacoes"
criar_pagina "estados_limites"
criar_pagina "preparo_concreto"
criar_pagina "lancamento_adensamento"
criar_pagina "cura"
criar_pagina "formas_escoramentos"
criar_pagina "fissuras"
criar_pagina "corrosao"
criar_pagina "outros_problemas"
criar_pagina "manutencao"
criar_pagina "referencias"

# Criação das páginas de subníveis
criar_pagina "cimento_tipos"
criar_pagina "cimento_propriedades"
criar_pagina "agregados_tipos"
criar_pagina "agregados_granulometria"
criar_pagina "aco_tipos"
criar_pagina "aco_armaduras"
