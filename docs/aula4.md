# **Exemplo de Cálculo de Pilar com Esbeltez e Coeficientes de Segurança**

**Dados do problema:**

- **Comprimento livre do pilar (\( L_0 \)):** 4,0 metros
- **Seção transversal do pilar:** 20 cm x 40 cm (largura \( b \) x altura \( h \))
- **Classe do concreto:** C30 (\( f_{ck} = 30 \, \text{MPa} \))
- **Aço utilizado:** CA-50 (\( f_{yk} = 500 \, \text{MPa} \))
- **Carga axial característica atuante (\( N_k \)):** 800 kN
- **Condições de contorno:** Engastado na base e livre no topo (pilar em balanço)

---

### **Passo a Passo do Cálculo**

#### **1. Determinação dos Esforços de Cálculo**

##### **1.1. Esforço Normal de Cálculo (\( N_{sd} \)):**

Utilizando os coeficientes parciais de segurança das ações:

- **Para cargas permanentes (\(\gamma_g\)):** 1,4
- **Para cargas variáveis (\( \gamma_q \)):** 1,4 ou 1,5 (usaremos 1,4 para simplificar)

Supondo que toda a carga seja permanente:

\[
N_{sd} = \gamma_g \times N_k = 1,4 \times 800 = 1120 \, \text{kN}
\]

---

#### **2. Determinação das Propriedades da Seção**

##### **2.1. Área da Seção (\( A_c \)):**

\[
A_c = b \times h = 0,20 \times 0,40 = 0,08 \, \text{m}^2
\]

##### **2.2. Momento de Inércia (\( I \)):**

Calculado em relação ao eixo menos rígido (eixo "y"):

\[
I_y = \dfrac{b \times h^3}{12} = \dfrac{0,20 \times (0,40)^3}{12} = 0,0010667 \, \text{m}^4
\]

##### **2.3. Raio de Giração (\( i \)):**

\[
i = \sqrt{\dfrac{I}{A_c}} = \sqrt{\dfrac{0,0010667}{0,08}} = 0,1155 \, \text{m}
\]

---

#### **3. Cálculo da Esbeltez (\( \lambda \))**

##### **3.1. Comprimento Efetivo (\( L_{ef} \)):**

Para um pilar em balanço:

\[
L_{ef} = 2 \times L_0 = 2 \times 4,0 = 8,0 \, \text{m}
\]

##### **3.2. Esbeltez (\( \lambda \)):**

\[
\lambda = \dfrac{L_{ef}}{i} = \dfrac{8,0}{0,1155} = 69,28
\]

---

#### **4. Verificação da Esbeltez Limite (\( \lambda_{lim} \))**

Conforme a **NBR 6118**, a esbeltez limite é dada por:

\[
\lambda_{lim} = \dfrac{C_1 \times C_2 \times C_3}{\sqrt{\phi_{ef}}}
\]

Onde:

- \( C_1 \) = 0,7 (considerando distribuição uniforme de momentos)
- \( C_2 \) = 1,0 (para pilares com armadura transversal adequada)
- \( C_3 \) = 1,0 (para concreto com \( f_{ck} \leq 50 \, \text{MPa} \))
- \( \phi_{ef} \) = 1,0 (considerando fluência média)

Então:

\[
\lambda_{lim} = \dfrac{0,7 \times 1,0 \times 1,0}{\sqrt{1,0}} = 0,7 \times 1 = 0,7 \times 140 = 98
\]

Multiplicamos por 140 para obter a esbeltez limite padrão:

\[
\lambda_{lim} = 0,7 \times 140 = 98
\]

Como \( \lambda = 69,28 < \lambda_{lim} = 98 \), o pilar está dentro da esbeltez limite, mas ainda assim devemos considerar os **efeitos de segunda ordem** devido ao valor elevado da esbeltez.

---

#### **5. Cálculo dos Efeitos de Segunda Ordem**

##### **5.1. Módulo de Elasticidade Secante do Concreto (\( E_{cs} \)):**

\[
E_{cs} = \dfrac{E_{c}}{\gamma_{c}}
\]

Onde:

- \( E_{c} \) é o módulo de elasticidade do concreto (para C30, \( E_{c} = 31 \, \text{GPa} \))
- \( \gamma_{c} = 1,4 \) (coeficiente parcial de segurança do concreto)

Então:

\[
E_{cs} = \dfrac{31 \times 10^6}{1,4} = 22,14 \times 10^6 \, \text{kN/m}^2
\]

##### **5.2. Carga Crítica de Euler (\( N_{e} \)):**

\[
N_{e} = \dfrac{\pi^2 \times E_{cs} \times I_y}{(L_{ef})^2} = \dfrac{\pi^2 \times 22,14 \times 10^6 \times 0,0010667}{(8,0)^2}
\]

Calculando:

\[
N_{e} = \dfrac{9,8696 \times 22,14 \times 10^6 \times 0,0010667}{64} = \dfrac{9,8696 \times 22,14 \times 0,0010667 \times 10^6}{64}
\]

\[
N_{e} = \dfrac{232,97 \times 10^3}{64} = 3.640 \, \text{kN}
\]

##### **5.3. Coeficiente de Fluência (\( \phi \)):**

Para simplificar, adotamos \( \phi = 1,4 \) (valor típico para concreto comum).

##### **5.4. Cálculo do Coeficiente Reduzido (\( \nu \)):**

\[
\nu = \dfrac{1}{1 + \phi}
\]

\[
\nu = \dfrac{1}{1 + 1,4} = \dfrac{1}{2,4} = 0,4167
\]

##### **5.5. Cálculo do Coeficiente de Amplificação (\( \gamma_z \)):**

\[
\gamma_z = \dfrac{1}{1 - \dfrac{N_{sd}}{\nu \times N_{e}}}
\]

\[
\gamma_z = \dfrac{1}{1 - \dfrac{1120}{0,4167 \times 3640}} = \dfrac{1}{1 - \dfrac{1120}{1.517}} = \dfrac{1}{1 - 0,7382} = \dfrac{1}{0,2618} = 3,820
\]

Como \( \gamma_z > 1.4 \), devemos realizar uma análise mais detalhada dos efeitos de segunda ordem, possivelmente utilizando métodos mais rigorosos como o P-Delta ou modelos numéricos.

No entanto, para fins deste exemplo, continuaremos com o cálculo.

---

#### **6. Cálculo do Momento de Cálculo (\( M_{sd} \))**

##### **6.1. Excentricidade Inicial Mínima (\( e_0 \)):**

\[
e_0 = \mathrm{max} \left( \dfrac{L_0}{300}; \dfrac{h}{30}; 20 \, \text{mm} \right)
\]

Calculando:

- \( \dfrac{L_0}{300} = \dfrac{4,0}{300} = 0,0133 \, \text{m} \)
- \( \dfrac{h}{30} = \dfrac{0,40}{30} = 0,0133 \, \text{m} \)
- \( 20 \, \text{mm} = 0,020 \, \text{m} \)

Então:

\[
e_0 = \mathrm{max}(0,0133; 0,0133; 0,020) = 0,020 \, \text{m}
\]

##### **6.2. Momento Inicial de Cálculo (\( M_{0d} \)):**

\[
M_{0d} = N_{sd} \times e_0 = 1120 \times 0,020 = 22,4 \, \text{kN} \cdot \text{m}
\]

##### **6.3. Momento de Cálculo Amplificado (\( M_{sd} \)):**

\[
M_{sd} = \gamma_z \times M_{0d} = 3,820 \times 22,4 = 85,57 \, \text{kN} \cdot \text{m}
\]

---

#### **7. Verificação da Resistência da Seção**

##### **7.1. Resistência do Concreto (\( f_{cd} \)):**

\[
f_{cd} = \dfrac{f_{ck}}{\gamma_c} = \dfrac{30}{1,4} = 21,43 \, \text{MPa}
\]

##### **7.2. Resistência do Aço (\( f_{yd} \)):**

\[
f_{yd} = \dfrac{f_{yk}}{\gamma_s} = \dfrac{500}{1,15} = 434,78 \, \text{MPa}
\]

##### **7.3. Dimensionamento da Armadura Longitudinal (\( A_s \))**

Para determinar \( A_s \), precisamos verificar se a seção resiste aos esforços \( N_{sd} \) e \( M_{sd} \).

Utilizaremos o **domínio 3** de deformação (compressão balanceada) para simplificar o cálculo.

##### **7.4. Cálculo da Altura da Linha Neutra (\( x \))**

No domínio 3, a deformação máxima do concreto é \( \epsilon_c = 0,0035 \), e a deformação no aço de tração é \( \epsilon_s > 0 \).

A força resistente de compressão no concreto:

\[
C_c = 0,85 \times f_{cd} \times b \times x
\]

A força resistente de tração no aço:

\[
T_s = A_s \times f_{yd}
\]

Equilibrando as forças:

\[
C_c = N_{sd}
\]

Então:

\[
0,85 \times f_{cd} \times b \times x = N_{sd}
\]

Isolando \( x \):

\[
x = \dfrac{N_{sd}}{0,85 \times f_{cd} \times b}
\]

\[
x = \dfrac{1120 \times 10^3}{0,85 \times 21,43 \times 10^6 \times 0,20} = \dfrac{1120 \times 10^3}{3,6421 \times 10^6} = 0,3075 \, \text{m}
\]

Verificando se \( x \leq x_{lim} \) (para domínio 3):

\[
x_{lim} = 0,45 \times d
\]

Onde \( d \) é a altura útil da seção:

\[
d = h - cobrimento - \dfrac{\phi}{2}
\]

Adotando:

- Cobrimento nominal = 25 mm = 0,025 m
- Diâmetro da barra (\( \phi \)) = 16 mm = 0,016 m

Então:

\[
d = 0,40 - 0,025 - \dfrac{0,016}{2} = 0,40 - 0,025 - 0,008 = 0,367 \, \text{m}
\]

Calculando \( x_{lim} \):

\[
x_{lim} = 0,45 \times 0,367 = 0,1652 \, \text{m}
\]

Como \( x = 0,3075 \, \text{m} > x_{lim} = 0,1652 \, \text{m} \), o pilar está no **domínio 4** (compressão plástica).

Neste caso, devemos verificar a capacidade resistente à flexão composta normal, utilizando o momento resistente da seção.

##### **7.5. Cálculo do Momento Resistente (\( M_Rd \))**

O momento resistente é dado por:

\[
M_{Rd} = N_{sd} \times (e_c - e_{2})
\]

Onde:

- \( e_c \) é a excentricidade correspondente à posição da resultante de compressão.
- \( e_{2} \) é a excentricidade acidental (já considerada mínima).

No domínio 4, considera-se que o momento resistente é mínimo, e a seção não é capaz de resistir ao momento solicitante calculado. Portanto, precisamos aumentar a área de armadura ou modificar a seção.

##### **7.6. Alternativa: Aumentar a Seção ou a Armadura**

Para que a seção resista aos esforços solicitantes, podemos:

- Aumentar as dimensões da seção (b e/ou h).
- Aumentar a área de armadura longitudinal (\( A_s \)).

##### **7.7. Cálculo da Área de Armadura Necessária**

Utilizando diagramas de interação ou software especializado, podemos determinar \( A_s \) necessária para resistir aos esforços \( N_{sd} = 1120 \, \text{kN} \) e \( M_{sd} = 85,57 \, \text{kN} \cdot \text{m} \).

Para fins ilustrativos, vamos supor que, após cálculos, a área de armadura necessária seja:

\[
A_s = 4.000 \, \text{mm}^2
\]

Verificando se está dentro dos limites normativos:

- **Taxa mínima de armadura (\( \rho_{min} \)):**

\[
\rho_{min} = 0,15\% \quad \text{ou} \quad A_{s_{min}} = 0,0015 \times A_c = 0,0015 \times 80.000 = 120 \, \text{mm}^2
\]

- **Taxa máxima de armadura (\( \rho_{max} \)):**

\[
\rho_{max} = 4\% \quad \text{ou} \quad A_{s_{max}} = 0,04 \times 80.000 = 3.200 \, \text{mm}^2
\]

Como \( A_s = 4.000 \, \text{mm}^2 > A_{s_{max}} = 3.200 \, \text{mm}^2 \), não é permitido.

##### **7.8. Solução Final**

Dado que não é possível aumentar a armadura além do máximo permitido, a solução é aumentar as dimensões da seção do pilar.

Por exemplo, aumentar \( b \) de 20 cm para 30 cm:

- Nova área: \( A_c = 0,30 \times 0,40 = 0,12 \, \text{m}^2 \)
- Recalcular todos os passos anteriores com a nova seção.

---
<iframe width="560" height="315" src="https://www.youtube.com/embed/oWrhWMXTPzY?si=1BEsT0Siih9iL4KO" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

---
