# Exemplo de Cálculo de Pilar Engastado nos Dois Extremos

**Dados do problema:**

- **Comprimento livre do pilar (\( L_0 \)):** 5,0 metros
- **Seção transversal do pilar:** 25 cm x 50 cm (largura \( b \) x altura \( h \))
- **Classe do concreto:** C30 (\( f_{ck} = 30 \, \text{MPa} \))
- **Aço utilizado:** CA-50 (\( f_{yk} = 500 \, \text{MPa} \))
- **Carga axial característica atuante (\( N_k \)):** 1200 kN
- **Condições de contorno:** Engastado na base e no topo

---

### **Passo a Passo do Cálculo**

#### **1. Determinação dos Esforços de Cálculo**

##### **1.1. Esforço Normal de Cálculo (\( N_{sd} \))**

Considerando que toda a carga é permanente e utilizando o coeficiente de segurança:

\[
N_{sd} = \gamma_g \times N_k = 1,4 \times 1200 = 1680 \, \text{kN}
\]

---

#### **2. Determinação das Propriedades da Seção**

##### **2.1. Área da Seção (\( A_c \))**

\[
A_c = b \times h = 0,25 \times 0,50 = 0,125 \, \text{m}^2
\]

##### **2.2. Momento de Inércia (\( I \))**

Calculado em relação ao eixo menos rígido (eixo "y"):

\[
I_y = \dfrac{b \times h^3}{12} = \dfrac{0,25 \times (0,50)^3}{12} = 0,002604 \, \text{m}^4
\]

##### **2.3. Raio de Giração (\( i \))**

\[
i = \sqrt{\dfrac{I_y}{A_c}} = \sqrt{\dfrac{0,002604}{0,125}} = 0,1443 \, \text{m}
\]

---

#### **3. Cálculo da Esbeltez (\( \lambda \))**

##### **3.1. Comprimento Efetivo (\( L_{ef} \))**

Para um pilar engastado nos dois extremos:

\[
L_{ef} = 0,5 \times L_0 = 0,5 \times 5,0 = 2,5 \, \text{m}
\]

##### **3.2. Esbeltez (\( \lambda \))**

\[
\lambda = \dfrac{L_{ef}}{i} = \dfrac{2,5}{0,1443} = 17,32
\]

---

#### **4. Verificação da Esbeltez Limite (\( \lambda_{lim} \))**

Utilizando a fórmula simplificada:

\[
\lambda_{lim} = 90
\]

Como \( \lambda = 17,32 < \lambda_{lim} = 90 \), os efeitos globais de segunda ordem podem ser desprezados.

---

#### **5. Cálculo dos Esforços Solicitantes**

##### **5.1. Excentricidade Inicial Mínima (\( e_0 \))**

\[
e_0 = \mathrm{max} \left( \dfrac{L_0}{300}; \dfrac{h}{30}; 20 \, \text{mm} \right) = \mathrm{max} \left( \dfrac{5,0}{300}; \dfrac{0,50}{30}; 0,020 \right) = 0,020 \, \text{m}
\]

##### **5.2. Momento Solicitante (\( M_{sd} \))**

\[
M_{sd} = N_{sd} \times e_0 = 1680 \times 0,020 = 33,6 \, \text{kN} \cdot \text{m}
\]

---

#### **6. Verificação da Resistência da Seção**

##### **6.1. Resistência dos Materiais**

- **Concreto:**

\[
f_{cd} = \dfrac{f_{ck}}{\gamma_c} = \dfrac{30}{1,4} = 21,43 \, \text{MPa}
\]

- **Aço:**

\[
f_{yd} = \dfrac{f_{yk}}{\gamma_s} = \dfrac{500}{1,15} = 434,78 \, \text{MPa}
\]

##### **6.2. Altura Útil da Seção (\( d \))**

Considerando:

- **Cobrimento nominal:** 25 mm
- **Diâmetro da armadura longitudinal (\( \phi \))**: 20 mm

\[
d = h - cobrimento - \dfrac{\phi}{2} = 0,50 - 0,025 - 0,010 = 0,465 \, \text{m}
\]

##### **6.3. Limite da Linha Neutra (\( x_{lim} \))**

Para CA-50 (acordo com NBR 6118):

\[
x_{lim} = 0,45 \times d = 0,45 \times 0,465 = 0,209 \, \text{m}
\]

##### **6.4. Cálculo da Linha Neutra (\( x \))**

Equilíbrio de forças normais:

\[
N_{sd} = 0,85 f_{cd} b x + A_s (f_{yd} - 0)
\]

Assumindo armadura simétrica (A_s na tração e na compressão), o segundo termo se anula:

\[
N_{sd} = 0,85 f_{cd} b x
\]

Isolando \( x \):

\[
x = \dfrac{N_{sd}}{0,85 f_{cd} b} = \dfrac{1680 \times 10^3}{0,85 \times 21,43 \times 10^6 \times 0,25} = 0,3677 \, \text{m}
\]

Como \( x = 0,3677 \, \text{m} > x_{lim} = 0,209 \, \text{m} \), a seção está no **Domínio 4** (compressão plástica). Neste caso, é necessário aumentar a seção ou usar concreto de maior resistência.

##### **6.5. Aumentando as Dimensões da Seção**

Vamos aumentar a seção para **30 cm x 60 cm**:

- **Nova área (\( A_c \))**:

\[
A_c = 0,30 \times 0,60 = 0,18 \, \text{m}^2
\]

- **Novo momento de inércia (\( I_y \))**:

\[
I_y = \dfrac{0,30 \times (0,60)^3}{12} = 0,0054 \, \text{m}^4
\]

- **Novo raio de giração (\( i \))**:

\[
i = \sqrt{\dfrac{I_y}{A_c}} = \sqrt{\dfrac{0,0054}{0,18}} = 0,1732 \, \text{m}
\]

- **Nova esbeltez (\( \lambda \))**:

\[
\lambda = \dfrac{L_{ef}}{i} = \dfrac{2,5}{0,1732} = 14,43
\]

##### **6.6. Recalculando \( x \) com a Nova Seção**

\[
x = \dfrac{N_{sd}}{0,85 f_{cd} b} = \dfrac{1680 \times 10^3}{0,85 \times 21,43 \times 10^6 \times 0,30} = 0,3066 \, \text{m}
\]

Comparando com \( x_{lim} \):

\[
x_{lim} = 0,45 \times d = 0,45 \times (0,60 - 0,025 - 0,010) = 0,45 \times 0,565 = 0,254 \, \text{m}
\]

Como \( x = 0,3066 \, \text{m} > x_{lim} = 0,254 \, \text{m} \), ainda estamos no **Domínio 4**.

##### **6.7. Aumentando a Resistência do Concreto**

Adotando \( f_{ck} = 40 \, \text{MPa} \):

- **Novo \( f_{cd} \)**:

\[
f_{cd} = \dfrac{40}{1,4} = 28,57 \, \text{MPa}
\]

- **Recalculando \( x \)**:

\[
x = \dfrac{1680 \times 10^3}{0,85 \times 28,57 \times 10^6 \times 0,30} = 0,2305 \, \text{m}
\]

Agora, \( x = 0,2305 \, \text{m} < x_{lim} = 0,254 \, \text{m} \), portanto, a seção está no **Domínio 3**.

##### **6.8. Cálculo do Momento Resistente (\( M_{Rd} \))**

\[
M_{Rd} = 0,68 f_{cd} b x (d - 0,4 x)
\]

Calculando:

\( d = 0,565 \, \text{m} \)
\( x = 0,2305 \, \text{m} \)
\( d - 0,4 x = 0,565 - 0,4 \times 0,2305 = 0,473 \, \text{m} \)

\[
M_{Rd} = 0,68 \times 28,57 \times 10^6 \times 0,30 \times 0,2305 \times 0,473 = 634,1 \, \text{kN} \cdot \text{m}
\]

Como \( M_{Rd} = 634,1 \, \text{kN} \cdot \text{m} > M_{sd} = 33,6 \, \text{kN} \cdot \text{m} \), a seção é suficiente.

##### **6.9. Cálculo da Área de Armadura (\( A_s \))**

Equilíbrio de momentos:

\[
M_{sd} = A_s f_{yd} (d - a')
\]

Onde:

\( a' = 0,035 \, \text{m} \) (cobrimento + metade do diâmetro)

Isolando \( A_s \):

\[
A_s = \dfrac{M_{sd}}{f_{yd} (d - a')} = \dfrac{33,6 \times 10^3}{434,78 \times 10^6 \times (0,565 - 0,035)} = 145,6 \, \text{mm}^2
\]

Considerando armadura simétrica:

\[
A_{s_{total}} = 2 \times 145,6 = 291,2 \, \text{mm}^2
\]

##### **6.10. Verificação das Taxas de Armadura**

- **Taxa mínima (\( A_{s_{min}} \))**:

\[
A_{s_{min}} = 0,0015 \times A_c = 0,0015 \times 180,000 = 270 \, \text{mm}^2
\]

- **Taxa máxima (\( A_{s_{max}} \))**:

\[
A_{s_{max}} = 0,04 \times A_c = 0,04 \times 180,000 = 7,200 \, \text{mm}^2
\]

Como \( 270 \, \text{mm}^2 < A_{s_{total}} = 291,2 \, \text{mm}^2 < 7,200 \, \text{mm}^2 \), a armadura está dentro dos limites normativos.

##### **6.11. Detalhamento da Armadura**

Adotando 4 barras de diâmetro 12,5 mm:

- **Área de uma barra (\( A_\phi \))**:

\[
A_\phi = \dfrac{\pi \times (12,5)^2}{4} = 122,7 \, \text{mm}^2
\]

- **Área total**:

\[
A_{s_{total}} = 4 \times 122,7 = 490,8 \, \text{mm}^2
\]

Como \( A_{s_{total}} = 490,8 \, \text{mm}^2 > 291,2 \, \text{mm}^2 \), está adequado.

---

### **Conclusão**

Para o pilar com as características dadas, após aumentar as dimensões da seção e utilizar um concreto de maior resistência, chegamos a uma seção de **30 cm x 60 cm**, classe de concreto **C40**, e armadura longitudinal composta por **4 barras de 12,5 mm** de diâmetro.

---

# Exercício Proposto para os Alunos

**Dados do problema:**

- **Comprimento livre do pilar (\( L_0 \)):** 6,0 metros
- **Seção transversal do pilar:** 30 cm x 40 cm (largura \( b \) x altura \( h \))
- **Classe do concreto:** C25 (\( f_{ck} = 25 \, \text{MPa} \))
- **Aço utilizado:** CA-50 (\( f_{yk} = 500 \, \text{MPa} \))
- **Carga axial característica atuante (\( N_k \)):** 1000 kN
- **Condições de contorno:** Articulado na base e engastado no topo

**Pede-se:**

1. **Verificar a esbeltez do pilar** e determinar se é necessário considerar os efeitos de segunda ordem.
2. **Calcular a área de armadura longitudinal necessária** para resistir aos esforços solicitantes.
3. **Detalhar a armadura** respeitando os critérios normativos.

**Dica:**

- Utilize os passos demonstrados no exemplo para orientar seus cálculos.
- Considere todos os coeficientes de segurança e propriedades dos materiais conforme a **NBR 6118**.
- Verifique as taxas mínima e máxima de armadura.

**Resposta Esperada:**

Após realizar os cálculos, espera-se que o aluno:

- Determine a esbeltez do pilar e conclua se os efeitos de segunda ordem podem ser desprezados ou não.
- Calcule a área de armadura necessária, garantindo que está dentro dos limites normativos.
- Proponha um detalhamento da armadura, especificando o número e o diâmetro das barras.

---

**Bons estudos!**