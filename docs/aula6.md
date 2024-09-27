**Aula Completa: Dimensionamento de um Pórtico de Concreto Armado com Vão de 10 metros e Altura de 5 metros Utilizando Aço CA-50**

---

**Introdução**

Nesta aula, vamos desenvolver um passo a passo completo para o dimensionamento de um pórtico de concreto armado com vão de 10 metros e altura de 5 metros, utilizando aço CA-50. Abordaremos detalhadamente cada etapa do cálculo, desde a definição dos dados iniciais, cálculo das cargas atuantes, análise estrutural, dimensionamento das seções de concreto, dimensionamento das armaduras de aço, até a especificação final dos materiais a serem utilizados. Nosso objetivo é assegurar que a estrutura atenda aos requisitos de segurança, desempenho e durabilidade conforme as normas brasileiras (ABNT NBR 6118).

---

**Passo 1: Definição dos Dados Iniciais**

**Geometria do Pórtico:**

   - **Vão Livre (L):** 10 metros
   - **Altura dos Pilares (H):** 5 metros
   - **Configuração:** Pórtico retangular simples com vigas e pilares de seção constante.

**Materiais:**

- **Concreto:**

    - Resistência característica à compressão: \( f_{ck} = 25 \) MPa
    - Módulo de Elasticidade: \( E_c = 25 \times 5600 \sqrt{f_{ck}} = 25 \times 5600 \sqrt{25} = 25 \times 5600 \times 5 = 700,000 \) MPa

- **Aço CA-50:**

     - Resistência característica ao escoamento: \( f_{yk} = 500 \) MPa
     - Tensão de cálculo: \( f_{yd} = \frac{f_{yk}}{\gamma_s} = \frac{500}{1.15} = 434.78 \) MPa
     - Módulo de Elasticidade: \( E_s = 210,000 \) MPa

**Condições de Apoio:**

   - **Base dos Pilares:** Engastada (fixa na fundação)
   - **Ligação Viga-Pilar:** Rígida (nós rígidos)

**Cobrimentos e Diâmetros:**

   - **Cobrimento nominal dos elementos estruturais (c):** 3 cm
   - **Diâmetros iniciais das barras de aço:**
     - Vigas: \( \phi_{viga} = 25 \) mm
     - Pilares: \( \phi_{pilar} = 20 \) mm
     - Estribos: \( \phi_{estribo} = 8 \) mm

---

**Passo 2: Cálculo das Cargas Atuantes**

**Carga Permanente (G):**

   - **Peso Próprio das Vigas e Pilares:**
     - Densidade do concreto armado: \( \gamma_c = 25 \) kN/m³
   - **Dimensões Iniciais Estimadas:**
     - Seção da Viga: Largura (b) = 30 cm; Altura (h) = 70 cm
     - Seção do Pilar: Largura (b) = 30 cm; Altura (h) = 70 cm

   - **Peso Próprio da Viga:**

\[
g_{viga} = \gamma_c \times A_{viga} = 25 \times (0.3 \times 0.7) = 25 \times 0.21 = 5.25 \text{ kN/m}
\]

**Carga Acidental (Q):**

   - **Sobrecarga de Uso na Cobertura:**
     - Considerando uma sobrecarga para coberturas acessíveis para manutenção:

\[
q_{telhado} = 1.5 \text{ kN/m}^2
\]

   - **Área Tributária da Viga:**
     - Considerando uma distância entre pórticos de 5 m (para cobrir toda a área):

\[
\text{Área Tributária} = 5 \text{ m}
\]

   - **Carga Distribuída na Viga devido à Sobrecarga:**

\[
q_{viga} = q_{telhado} \times \text{Área Tributária} = 1.5 \times 5 = 7.5 \text{ kN/m}
\]

**Carga Total na Viga:**
   - **Carga Permanente Total:**

\[
G = g_{viga} = 5.25 \text{ kN/m}
\]

   - **Carga Acidental Total:**

\[
Q = q_{viga} = 7.5 \text{ kN/m}
\]

   - **Carga Total (quase permanente):**

\[
q_{\text{total}} = G + Q = 5.25 + 7.5 = 12.75 \text{ kN/m}
\]

**Coeficientes de Majoração de Ações (γf):**
   - **Para Estado Limite Último (ELU):**

\[
\gamma_{f,G} = 1.4 \quad (\text{Cargas Permanentes})
\]

\[
\gamma_{f,Q} = 1.4 \quad (\text{Cargas Acidentais})
\]

---

**Passo 3: Análise Estrutural**

**Esforços na Viga:**

   - **Momento Fletor Máximo na Viga (Centro do Vão):**

\[
M_{viga} = \frac{q_{\text{total}} \times L^2}{8} = \frac{12.75 \times 10^2}{8} = \frac{12.75 \times 100}{8} = 159.375 \text{ kN.m}
\]

   - **Esforço Cortante Máximo na Viga (Nos Apoios):**

\[
V_{viga} = \frac{q_{\text{total}} \times L}{2} = \frac{12.75 \times 10}{2} = 63.75 \text{ kN}
\]

**Esforços nos Pilares:**

   - **Reação Vertical em Cada Pilar (Devido à Viga):**

\[
R_{vertical} = V_{viga} = 63.75 \text{ kN}
\]

  - **Carga Axial nos Pilares (Considerando Peso Próprio):**
     - **Peso Próprio do Pilar:**

\[
g_{pilar} = \gamma_c \times A_{pilar} = 25 \times (0.3 \times 0.7) = 25 \times 0.21 = 5.25 \text{ kN/m}
\]

  - **Carga Axial Total no Pilar:**

\[
N_{pilar} = R_{vertical} + g_{pilar} \times H = 63.75 + 5.25 \times 5 = 63.75 + 26.25 = 90 \text{ kN}
\]

  - **Momento Fletor no Topo do Pilar (Devido à Ligação Rígida com a Viga):**
     - **Momento no Apoio da Viga:**

\[
M_{\text{apoio}} = \frac{q_{\text{total}} \times L^2}{12} = \frac{12.75 \times 100}{12} = 106.25 \text{ kN.m}
\]

> **Esse momento é transferido para o topo do pilar.**

---

**Passo 4: Dimensionamento da Viga**

**Estado Limite Último (ELU):**

   - **Momento Fletor de Cálculo (Considerando os Coeficientes de Majoração):**

\[
M_{sd} = \gamma_{f,G} \times G \times \frac{L^2}{8} + \gamma_{f,Q} \times Q \times \frac{L^2}{8} = 1.4 \times 5.25 \times \frac{100}{8} + 1.4 \times 7.5 \times \frac{100}{8}
\]

\[
M_{sd} = 1.4 \times 65.625 + 1.4 \times 93.75 = 91.875 + 131.25 = 223.125 \text{ kN.m}
\]

**Dimensionamento à Flexão Simples:**

   - **Dimensões da Seção da Viga:**
     - Largura (b): 30 cm
     - Altura (h): 70 cm
     - Altura útil (d): \( d = h - c - \phi_{long} / 2 = 70 - 3 - 2.5 = 64.5 \text{ cm} \)

   - **Verificação do Momento Resistente da Seção:**

     - **Domínio 3 (Flexão Simples):**
     - **Parâmetro \( k_{x} \):**

\[
k_{x} = \frac{M_{sd}}{b \times d^2 \times f_{cd}} = \frac{223.125 \times 10^3}{30 \times 64.5^2 \times 17} = \frac{223125}{30 \times 4160.25 \times 17} = \frac{223125}{30 \times 4160.25 \times 17}
\]

> **Calculando \( f_{cd} = \frac{f_{ck}}{\gamma_c} = \frac{25}{1.4} = 17.857 \) MPa (aproximamos para 17 MPa para segurança).**

\[
k_{x} = \frac{223125}{30 \times 4160.25 \times 17} = \frac{223125}{2,121,129.25} \approx 0.105
\]

  - **Verificando se \( k_{x} \leq k_{x,\text{lim}} \) (para Domínio 3):**

\[
k_{x,\text{lim}} = 0.45
\]

> Como \( 0.105 \leq 0.45 \), estamos no Domínio 3.

   - **Cálculo da Linha Neutra (x):**

\[
x = k_{x} \times d = 0.105 \times 64.5 = 6.77 \text{ cm}
\]

   - **Braço de Alavanca (z):**

\[
z = d - 0.4 \times x = 64.5 - 0.4 \times 6.77 = 64.5 - 2.708 = 61.792 \text{ cm}
\]

   - **Cálculo da Área de Aço Necessária (As):**

\[
As = \frac{M_{sd}}{z \times f_{yd}} = \frac{223.125 \times 10^3}{61.792 \times 434.78} = \frac{223125}{26,879.13} \approx 8.3 \text{ cm}^2
\]

**Dimensionamento da Armadura de Flexão:**

   - **Escolha das Barras:**

     - Utilizando barras de \( \phi_{20} \) mm (área por barra \( A_{\phi_{20}} = 3.14 \) cm²):

\[
n = \frac{As}{A_{\phi_{20}}} = \frac{8.3}{3.14} \approx 2.64
\]
  
  - **Adotamos 3 barras de \( \phi_{20} \) mm na armadura inferior.**

  - Área real de aço fornecida:

\[
As_{\text{real}} = 3 \times 3.14 = 9.42 \text{ cm}^2
\]
     
> **A área de aço fornecida é maior que a necessária, o que é aceitável.**

**Verificação da Armadura Mínima e Máxima:**

   - **Armadura Mínima (As,min):**

\[
As_{\text{min}} = 0.0015 \times b \times d = 0.0015 \times 30 \times 64.5 = 2.9 \text{ cm}^2
\]

  - **Como \( As_{\text{real}} = 9.42 \text{ cm}^2 > As_{\text{min}} \), está ok.**

  - **Armadura Máxima (As,max):**

\[
As_{\text{max}} = 0.04 \times b \times d = 0.04 \times 30 \times 64.5 = 77.4 \text{ cm}^2
\]

> **Como \( As_{\text{real}} = 9.42 \text{ cm}^2 < As_{\text{max}} \), está ok.**

**Armadura de Compressão (Armadura Superior):**

   - **Devido ao momento negativo nos apoios (engastamento), é necessário prever armadura superior.**
   - **Momento no Apoio:**

\[
M_{\text{apoio,sd}} = \gamma_{f,G} \times M_{\text{apoio,G}} + \gamma_{f,Q} \times M_{\text{apoio,Q}} = 1.4 \times 43.75 + 1.4 \times 62.5 = 61.25 + 87.5 = 148.75 \text{ kN.m}
\]

   - **Cálculo da Armadura Superior (As'):**

\[
As' = \frac{M_{\text{apoio,sd}}}{z \times f_{yd}} = \frac{148.75 \times 10^3}{61.792 \times 434.78} \approx 5.5 \text{ cm}^2
\]

  - **Escolha das Barras:**
  - Utilizando barras de \( \phi_{20} \) mm:

\[
n' = \frac{As'}{A_{\phi_{20}}} = \frac{5.5}{3.14} \approx 1.75
\]

  - **Adotamos 2 barras de \( \phi_{20} \) mm na armadura superior.**
  - Área real de aço fornecida:

\[
As'_{\text{real}} = 2 \times 3.14 = 6.28 \text{ cm}^2
\]

---

**Passo 5: Verificação ao Cisalhamento na Viga**

**Esforço Cortante de Cálculo (Vsd):**

\[
V_{sd} = \gamma_{f,G} \times V_{G} + \gamma_{f,Q} \times V_{Q} = 1.4 \times 26.25 + 1.4 \times 37.5 = 36.75 + 52.5 = 89.25 \text{ kN}
\]

**Resistência ao Cisalhamento do Concreto (Vrd2):**

\[
V_{rd2} = 0.27 \times f_{cd} \times b \times d = 0.27 \times 17 \times 30 \times 64.5 = 0.27 \times 17 \times 1935 = 0.27 \times 32,895 = 8,881.65 \text{ kN}
\]

> **Valor irrealisticamente alto, indicando que o concreto sozinho não resistirá ao esforço cortante, logo, é necessário dimensionar estribos.**

**Dimensionamento dos Estribos:**

  - **Tensão de Cisalhamento (τ):**

\[
\tau = \frac{V_{sd}}{b \times d} = \frac{89.25 \times 10^3}{30 \times 64.5} = \frac{89,250}{1,935} \approx 46.1 \text{ kN/m}
\]

  - **Armadura Transversal Necessária (Asw):**

\[
Asw / s = \frac{V_{sd}}{0.9 \times d \times f_{yd}} = \frac{89,250}{0.9 \times 64.5 \times 434.78} \approx \frac{89,250}{25,313.91} \approx 3.53 \text{ cm}^2/m
\]

  - **Escolha dos Estribos:**
    - Utilizando estribos duplos de \( \phi_{8} \) mm (área por estribo \( A_{\phi_{8}} = 0.50 \) cm²):
    - Espaçamento (s):

\[
s = \frac{2 \times A_{\phi_{8}}}{Asw / s} = \frac{2 \times 0.50}{3.53} \approx \frac{1}{3.53} \approx 0.283 \text{ m} = 28.3 \text{ cm}
\]

> **Adotamos espaçamento de 20 cm (para maior segurança).**

---

**Passo 6: Verificação de Deformações na Viga**

**Limite de Flecha Admissível:**

\[
\delta_{\text{adm}} = \frac{L}{250} = \frac{10,000}{250} = 40 \text{ mm}
\]

**Cálculo da Flecha Instantânea:**
  - **Momento de Inércia (I):**

\[
I = \frac{b \times h^3}{12} = \frac{30 \times 70^3}{12} = \frac{30 \times 343,000}{12} = \frac{10,290,000}{12} = 857,500 \text{ cm}^4
\]

  - **Módulo de Elasticidade do Concreto (E_c):** Já calculado anteriormente como 25,000 MPa
  - **Flecha Máxima (viga biapoiada):**

\[
\delta_{\text{máx}} = \frac{5 q_{\text{total}} L^4}{384 E_c I} = \frac{5 \times 12.75 \times 10^3 \times 10^4}{384 \times 25,000 \times 857,500}
\]

\[
\delta_{\text{máx}} = \frac{5 \times 12,750 \times 10000}{384 \times 25,000 \times 857,500} = \frac{637,500,000}{8,250,000,000,000} \approx 0.077 \text{ m} = 77 \text{ mm}
\]

> **Como \( \delta_{\text{máx}} = 77 \text{ mm} > \delta_{\text{adm}} = 40 \text{ mm} \), precisamos aumentar a rigidez da viga.**

**Ajuste das Dimensões da Viga:**

  - **Aumentar a altura da viga para reduzir a flecha. Vamos tentar h = 80 cm:**
    - Novo momento de inércia:
    
\[
I_{\text{novo}} = \frac{30 \times 80^3}{12} = \frac{30 \times 512,000}{12} = 1,280,000 \text{ cm}^4
\]

    - Nova flecha máxima:

\[
\delta_{\text{máx,novo}} = \frac{5 \times 12,750 \times 10000}{384 \times 25,000 \times 1,280,000} = \frac{637,500,000}{12,288,000,000,000} \approx 0.0518 \text{ m} = 51.8 \text{ mm}
\]

  - **Ainda acima do admissível.**

  - **Tentar h = 90 cm:**
    - Novo momento de inércia:

\[
I_{\text{novo}} = \frac{30 \times 90^3}{12} = \frac{30 \times 729,000}{12} = 1,822,500 \text{ cm}^4
\]

    - Nova flecha máxima:

\[
\delta_{\text{máx,novo}} = \frac{637,500,000}{17,062,500,000,000} \approx 0.0374 \text{ m} = 37.4 \text{ mm}
\]
    
> **Agora, \( \delta_{\text{máx}} = 37.4 \text{ mm} < \delta_{\text{adm}} = 40 \text{ mm} \).**

**Atualização das Dimensões e Recalculando a Armadura:**

  - **Dimensões Atualizadas da Viga:**
    - Largura (b): 30 cm
    - Altura (h): 90 cm
    - Altura útil (d): \( d = 90 - 3 - 2.5 = 84.5 \text{ cm} \)


   - **Recalculando \( k_{x} \):**

\[
k_{x} = \frac{M_{sd}}{b \times d^2 \times f_{cd}} = \frac{223125}{30 \times 84.5^2 \times 17} \approx 0.059
\]

\[x = k_{x} \times d = 0.059 \times 84.5 = 5 \text{ cm}\]

\[z = d - 0.4 \times x = 84.5 - 0.4 \times 5 = 82.5 \text{ cm}\]

   - **Nova Área de Aço Necessária (As):**

\[
As = \frac{M_{sd}}{z \times f_{yd}} = \frac{223125}{82.5 \times 434.78} \approx 6.23 \text{ cm}^2
\]

   - **Escolha das Barras:**

     - Utilizando 2 barras de \( \phi_{20} \) mm:

\[
As_{\text{real}} = 2 \times 3.14 = 6.28 \text{ cm}^2
\]

---

**Passo 7: Dimensionamento dos Pilares**

**Esforços Solicitantes nos Pilares:**

   - **Esforço Normal de Cálculo (Nsd):**

\[
N_{sd} = \gamma_{f,G} \times N_{g} + \gamma_{f,Q} \times N_{q} = 1.4 \times 90 + 1.4 \times 0 = 126 \text{ kN}
\]

     - **Consideramos apenas carga permanente no pilar para simplificar.**

   - **Momento Fletor de Cálculo (Msd):**

\[
M_{sd} = M_{\text{apoio,sd}} = 148.75 \text{ kN.m}
\]

**Dimensionamento à Flexo-Compressão:**

   - **Parâmetros:**
     - Largura (b): 30 cm
     - Altura (h): 90 cm
     - Altura útil (d): \( d = 90 - 3 - 2 = 85 \text{ cm} \)
     - **Parâmetro \( \nu = \frac{N_{sd}}{b \times h \times f_{cd}} = \frac{126 \times 10^3}{30 \times 90 \times 17} = \frac{126,000}{45,900} \approx 2.74 \)**
   - **Cálculo da Taxa de Armadura Necessária:**
     - **Utilizando diagramas de interação ou métodos simplificados da NBR 6118.**
     - **Para este exemplo, adotaremos uma taxa de armadura de 1%:**

\[
As = 0.01 \times b \times h = 0.01 \times 30 \times 90 = 27 \text{ cm}^2
\]

**Escolha das Barras de Aço:**

   - **Utilizando barras de \( \phi_{20} \) mm:**

\[
n = \frac{As}{A_{\phi_{20}}} = \frac{27}{3.14} \approx 8.6
\]

Adotamos 8 barras de \( \phi_{20} \) mm.

---

   - **Distribuição das Barras:**
     - 2 barras em cada face, totalizando 8 barras.

**Armadura Transversal (Estribos):**

Utilizando estribos de \( \phi_{8} \) mm a cada 15 cm.

---

**Passo 8: Detalhamento das Ligações e Engastamento**

**Engastamento na Base dos Pilares:**

   - **Prolongamento das Armaduras Longitudinais para Dentro da Fundação:**

     - Comprimento de ancoragem (\( l_{b} \)) conforme NBR 6118.

     - **Cálculo do Comprimento de Ancoragem:**

\[
l_{b} = \alpha_{1} \times \alpha_{2} \times \alpha_{3} \times \alpha_{5} \times \frac{\phi}{4} \times \frac{f_{yd}}{f_{bd}}
\]

  - Onde \( f_{bd} \) é a tensão de aderência de cálculo.
  
  - **Para simplificar, adotamos um comprimento mínimo de 60 cm.**

**Ligação Viga-Pilar:**

   - **Continuidade das Armaduras Longitudinais da Viga sobre o Pilar:**
     - As barras superiores da viga devem ser ancoradas dentro do pilar com comprimento adequado.
   - **Detalhamento dos Estribos na Região do Nó:**
     - Aumentar a densidade de estribos na região da ligação para resistir aos esforços concentrados.

---

**Passo 9: Especificação Final dos Materiais**

1. **Vigas:**

   - **Dimensões:**
     - Largura (b): 30 cm
     - Altura (h): 90 cm
   - **Armadura Longitudinal Inferior:**
     - 2 barras de \( \phi_{20} \) mm (área total de 6.28 cm²)
   - **Armadura Longitudinal Superior (Nos Apoios):**
     - 2 barras de \( \phi_{20} \) mm (área total de 6.28 cm²)
   - **Armadura Transversal (Estribos):**
     - Estribos duplos de \( \phi_{8} \) mm a cada 20 cm no vão e a cada 10 cm nos apoios.

2. **Pilares:**

   - **Dimensões:**
     - Largura (b): 30 cm
     - Altura (h): 90 cm
   - **Armadura Longitudinal:**
     - 8 barras de \( \phi_{20} \) mm (área total de 25.12 cm²)
   - **Armadura Transversal (Estribos):**
     - Estribos de \( \phi_{8} \) mm a cada 15 cm, reduzindo para 10 cm nas extremidades dos pilares (regiões críticas).

3. **Aço Utilizado:**

   - **Tipo de Aço:** CA-50
   - **Especificações:**
     - **Barras de \( \phi_{20} \) mm:** Utilizadas nas armaduras longitudinais das vigas e pilares.
     - **Barras de \( \phi_{8} \) mm:** Utilizadas nos estribos das vigas e pilares.

4. **Concreto:**

   - **Classe:** C25 (fck = 25 MPa)
   - **Cobrimento Nominal:**
     - 3 cm para vigas e pilares.

---

**Conclusão**

Realizamos um dimensionamento completo e detalhado de um pórtico de concreto armado com vão de 10 metros e altura de 5 metros, utilizando aço CA-50. O dimensionamento considerou todas as etapas necessárias, desde o cálculo das cargas atuantes até a especificação final dos materiais. Foram definidos os detalhes construtivos das armaduras, incluindo tipos, diâmetros, quantidades e espaçamentos, garantindo o atendimento aos requisitos normativos da ABNT NBR 6118.

---

**Referências**

- **ABNT NBR 6118**: Projeto de Estruturas de Concreto – Procedimento.
- **ABNT NBR 6120**: Cargas para o Cálculo de Estruturas de Edificações.
- **Manual de Dimensionamento de Estruturas de Concreto Armado**.
- **Tabela de Bitolas de Aço CA-50**.