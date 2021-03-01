-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 26, 2021 at 08:44 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_code_p2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `bloqueado` tinyint(1) NOT NULL DEFAULT '0',
  `deletado` tinyint(1) NOT NULL DEFAULT '0',
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `descricao`, `bloqueado`, `deletado`, `data_cadastro`) VALUES
(1, 'Tecnologia', NULL, 0, 0, '2021-02-03 18:53:06'),
(2, 'Vendas', NULL, 0, 0, '2021-02-03 18:53:06'),
(3, 'Administração', NULL, 0, 0, '2021-02-03 18:53:20'),
(4, 'Gestão', NULL, 0, 0, '2021-02-03 18:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `introducao` text COLLATE utf8_unicode_ci NOT NULL,
  `conteudo` text COLLATE utf8_unicode_ci NOT NULL,
  `bloqueado` tinyint(1) NOT NULL DEFAULT '0',
  `deletado` tinyint(1) NOT NULL DEFAULT '0',
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria_id` int(11) NOT NULL,
  `privado` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `titulo`, `slug`, `introducao`, `conteudo`, `bloqueado`, `deletado`, `data_cadastro`, `categoria_id`, `privado`) VALUES
(1, 'A Hospedagem Umbler é boa?', 'a-hospedagem-umbler-e-boa', 'Faalaê incuber beleza? Seja muito bem-vindo à mais um vídeo do Canal Nano \r\nAcademy, eu sou o Paulo Felipe e nesse vídeo Vamos começar uma série sobre a Hospedagem de Sites Umbler \r\nNa qual eu vou algumas objeções como por exemplo:', 'Faalaê incuber beleza? Seja muito bem-vindo à mais um vídeo do Canal Nano Academy, eu sou o Paulo Felipe e nesse vídeo Vamos começar uma série sobre a Hospedagem de Sites Umbler na qual eu vou algumas objeções como por exemplo:\r\n\r\nA hospedagem de sites Umbler é boa?\r\nVale a pena migrar meu site pra lá?\r\nComo que funciona a dinâmica desse serviço de hospedagem que vem revolucionando o mercado de hospedagem de sites pensando de um jeito bem disruptivo?\r\nComo migrar meu site WordPress pra Umbler?\r\nEsse tal GoodByHost funciona mesmo?\r\nO que é a tecnologia de Container e como ela oferece escalabilidade para minha aplicação?\r\nLink para você testar a Umbler gratuitamente por 7 dias e aprenda nessa série de vídeos Como Hospedar e Configurar o Seu Site WordPress em poucas horas.\r\nhttps://academy.nanoincub.com.br/umbler', 0, 0, '2021-02-03 19:01:20', 1, 1),
(2, 'Jeff Bezos deixará cargo de CEO da Amazon neste ano', 'jeff-bezos-deixara-cargo-de-ceo-da-amazon-neste-ano', 'Jeff Bezos, fundador e dono da Amazon, anunciou nesta terça-feira (2) que deixará o cargo de CEO da big tech ainda neste ano. \r\nEm comunicado aos seus funcionários, o magnata norte-americano informou que será substituído por Andy Jassy, responsável pelo Amazon Web Services - setor dedicado a serviços de armazenamento e processamento de dados -, mas seguirá na companhia.', 'Jeff Bezos, fundador e dono da Amazon, anunciou nesta terça-feira (2) que deixará o cargo de CEO da big tech ainda neste ano. Em comunicado aos seus funcionários, o magnata norte-americano informou que será substituído por Andy Jassy, responsável pelo Amazon Web Services - setor dedicado a serviços de armazenamento e processamento de dados -, mas seguirá na companhia.\r\n\r\n\"Estou empolgado em anunciar que, no terceiro trimestre, vou ocupar o cargo de presidente executivo do conselho de diretores da Amazon e que Andy Jassy se tornará CEO. Como presidente executivo, pretendo concentrar minha energia e minha atenção em novos produtos e iniciativas\", declarou Bezos, que deve passar a se dedicar mais a outros projetos, como a empresa espacial Blue Origin, as entidades filantrópicas Bezos Earth Fund e Day One Fund e o jornal \"The Washington Post\", que adquiriu em 2013.\r\n\r\nBezos deixa o posto à frente da Amazon 27 anos após ter criado a empresa, em 1994, como uma loja online de livros quando a internet ainda engatinhava. Atualmente, o empresário é o segundo homem mais rico do mundo (atrás apenas de Elon Musk), acumulando uma fortuna de US$ 197 bilhões, de acordo com o ranking de bilionários da agência Bloomberg.', 0, 0, '2021-02-03 19:03:04', 4, 0),
(3, 'Como Se Cadastrar na Umbler', 'Como-Se-Cadastrar-na-Umbler', 'Faalaê incuber beleza? Seja muito bem-vindo à mais um vídeo do Canal Nano Academy, eu sou o Paulo Felipe e nesse vídeo você aprenderá como criar o seu cadastro na Umbler e testar a hospedagem.', 'Link para você testar a Umbler gratuitamente por 7 dias e aprenda nessa série de vídeos Como Hospedar e Configurar o Seu Site WordPress em poucas horas.\r\nhttps://academy.nanoincub.com.br/umbler\r\n\r\n\r\n\r\nE aqui finalizamos mais um tutorial meu parceiro(a).\r\n\r\nPor último e não menos importante segue o fluxo do que é necessário fazer para sair dessa postagem com a consciência de que você fez o melhor que podia fazer para ajudar o blog a alcançar cada vez mais pessoas:\r\n\r\nVá até o Canal e Larga o Like Nessa P#&%@\r\n Clique aqui e se Inscreva no Canal!\r\nSe você ficou com alguma dúvida, deseja acrescentar algum ponto no tutorial ou quer compartilhar como o conteúdo te ajudou é só deixar nos comentários;\r\nSe esse post foi útil para você, compartilhe com a comunidade para que possa ajudar outras pessoas também;', 0, 0, '2021-02-22 18:11:31', 1, 0),
(4, 'Mudanças de Bolsonaro desgastam Guedes', 'Mudancas-de-Bolsonaro-desgastam-Guedes', 'Novo nome na Petrobras desgasta ministro com o mercado e provoca incertezas. Na visão de economistas, as pautas consideradas populistas podem travar a gestão de Guedes, que quer privatizações e reformas.', 'A intervenção do presidente Bolsonaro (sem partido) no comando da Petrobras assustou agentes do mercado financeiro, que procuraram integrantes do governo nos últimos dias para saber do futuro da agenda liberal do ministro da Economia, Paulo Guedes.\r\n\r\nDentro do próprio governo, é consenso na área política que o ministro da Economia sai desgastado com mais uma mudança determinada pelo presidente Bolsonaro. Isso, sem contar a ameaça de Bolsonaro de que outras trocas, inclusive de nomes escolhidos por Guedes, poderão acontecer.\r\n\r\nAlém da substituição de Castello Branco na Petrobras, governistas admitem que “não deu liga” a presidência de André Brandão, no comando do Banco do Brasil, com o presidente Bolsonaro. Acontece que Brandão foi um nome escolhido por Guedes e pelo presidente do Banco Central, Roberto Campos Neto, e é muito respeitado pelo mercado.\r\n\r\nO temor do mercado financeiro é de que as recentes sinalizações do presidente representem uma guinada para uma agenda populista e enterre, ou atrase, a agenda prometida por Guedes, que prevê reformas e privatizações.', 0, 0, '2021-02-22 18:13:16', 3, 1),
(5, 'Maneiras de evitar prejuízos no Agronegócio', 'Maneiras-de-evitar-prejuizos-no-Agronegocio', 'Trabalhar no campo, seja em criações de animais ou em plantações de diversos tipos, é uma grande construção de paciência e carinho. No Brasil, existem muitos que desfrutam desse trabalho que significa tanto ao país. Apesar das belezas do agronegócio, existem diversos problemas que podem acabar causando prejuízo ao seu negócio.', 'Mas você se pergunta, quais são as causas dos prejuízos mais comuns que estou tendo no meu agronegócio? E como posso evitar que tais prejuízos ocorram comigo? Pensando nisso, fizemos esse conteúdo para responder essas perguntas.\r\n\r\n \r\n\r\n \r\n\r\nNesse texto você irá ver:\r\n\r\nMANUTENÇÃO DE EQUIPAMENTOS\r\nTECNOLOGIA\r\nCONSUMO CONSCIENTE DE ÁGUA\r\nGESTÃO EM GERAL\r\nANÁLISE DE DADOS METEREOLÓGICOS\r\nREFERÊNCIAS\r\n \r\n\r\n \r\n\r\nMANUTENÇÃO DOS EQUIPAMENTOS\r\n \r\n\r\nAssim como as pessoas necessitam ir ao médico para que não ocorram problemas com a saúde, os equipamentos também necessitam de cuidados. Com o tempo e uso, o equipamento pode se desgastar ou até quebrar. Por conta disso, a manutenção é necessária.\r\n\r\nNão espere que a máquina que você utiliza quebre para fazer a manutenção! Além de atrasar os processos necessários no seu agronegócio, os gastos para arrumar um equipamento quebrado podem ser maiores que o gasto de uma boa manutenção preventiva ou preditiva.\r\n\r\nPara uma rápida explicação, a manutenção preventiva é aquela em que se seguem todas as especificações e recomendações do fabricante do equipamento.  Já a manutenção preditiva usa algumas ferramentas para fazer o diagnóstico do seu equipamento. Ambas as manutenções são eficientes. Basta escolher qual utilizar, dependendo de sua necessidade.', 0, 0, '2021-02-22 18:15:30', 4, 0),
(6, 'Ainda buscando uma fórmula mágica?', 'Ainda-buscando-uma-formula-magica', 'Em um momento de crise prolongada como o que estamos vivendo e ainda sem uma segurança de quando ela de fato terminará, é normal que muitas empresas, principalmente as pequenas e médias, busquem alguma fórmula para conseguir algum resultado positivo e pelo menos se manterem vivas, mas entendo isso como um momento de exceção.', 'O problema que vejo é que ainda acredito que boa parte dos empresários e executivos (e aqui incluo das grandes empresas também), continuam sofrendo do que chamo de Síndrome de Panoramix. E digo que continuam porque já escrevi sobre isso há 6 anos e vejo poucas mudanças até agora.\r\n\r\nE o que é a Síndrome de Panoramix? Se você já leu alguma revista do Asterix, o guerreiro gaulês, sabe que o Panoramix é o druida que criava fórmulas mágicas para quase tudo, e a mais famosa era a fórmula que dava uma super força para quem a bebia.\r\n\r\nE resolvi retomar este assunto porque a pandemia atual parece que estimulou ainda mais este comportamento das empresas por alguma fórmula mágica fácil e resolvedora de todos os problemas de maneira rápida.', 0, 0, '2021-02-22 18:17:44', 2, 1),
(7, 'Uma única dica para conquistar clientes', 'Uma-unica-dica-para-conquistar-clientes', 'Antes de começar a ler este artigo, faça um teste e digite a seguinte frase no Google: “Como não perder clientes”.', 'Você verá vários links com 4, 5, 6, 7, 8 dicas diferentes sobre como não perder um cliente. Particularmente, gosto desta técnica de dicas, pois elas ajudam a dar um aspecto mais prático para visões conceituais. Já usei ela aqui em vários artigos neste blog.\r\n\r\nMas, como como já vimos, no Google já tem muita dica boa e que vale a pena prestar atenção, mas tem uma que não achei em nenhum lugar e é sobre ela que decidi falar hoje. Sim, só uma dica.\r\n\r\nO CLIENTE CONQUISTADO PELO BOLSO, TAMBÉM VAI EMBORA PELO BOLSO.\r\n\r\nEsta é a dica ou talvez posso chamar de alerta. Creio que esta dica é até certo ponto autoexplicativa, mas seria muito simplista considerarmos então que o problema de ganhar e perder clientes pode estar apenas no preço do produto ou serviço, até porque isso geraria também soluções simplistas (que é diferente de simples), como dar descontos ou aumentar preços, por exemplo.\r\n\r\n\r\nMas não estou falando apenas do valor monetário em si, mas o que está por trás disso que é a sensação de ganho ou vantagem que um cliente tem ao consumir o seu produto. Em outras palavras, se uma empresa dá muita ênfase ao valor do seu produto e busca conquistar clientes apenas com a variável preço, pode ter certeza de que quando esta variável não ficar mais tão atrativa, fatalmente o cliente será perdido, simples assim.\r\n\r\nTrabalhei durante algum tempo acompanhando campanhas de comunicação de varejo e tínhamos as chamadas peças Produto-Preço, que eram tipo tabloides de produtos ou promoções onde os valores têm o maior destaque. Até entendo hoje que a técnica produto-preço tem a sua importância tática, mas vejo que muitas empresas a usam como pilar estratégico de negócio ou mesmo de comunicação. O problema disso é que cada vez mais será necessário investimento (que aqui considero gasto mesmo) para se sustentar os resultados de vendas neste formato- ou seja, apesar de às vezes até gerar resultados de curto prazo, não será sustentável e nem rentável.', 0, 0, '2021-02-22 18:20:02', 2, 0),
(8, 'Vendas no varejo caem 6,1% em dezembro', 'Vendas-no-varejo-caem-em-dezembro', 'As vendas do comércio varejista brasileiro recuaram 6,1 por cento em dezembro na comparação com o mês anterior e subiram 1,2 por cento na comparação com o ano anterior, informou o Instituto Brasileiro de Geografia e Estatística (IBGE) nesta quarta-feira.', 'Foi a quarta alta anual consecutiva do setor, mas o desempenho mais fraco dos últimos 4 anos. O comércio varejista apresentou números positivos no acumulado anual de 2,1% em 2017; 2,3% em 2018; 1,8% em 2019; e 1,2% em 2020. \r\n\r\nO balanço positivo nas vendas do comércio varejista no acumulado de 2020 veio após um primeiro semestre de queda de -3,2% e um segundo semestre de alta de 5,1%.\r\n\r\nCom esses resultados, o varejo terminou o ano no mesmo patamar de fevereiro de 2020, período pré-pandemia. Depois de fortes quedas em março e abril, o setor varejista registrou crescimento de maio até outubro, ultrapassando o patamar pré-pandemia, mas voltou a contrair nos últimos dois meses do ano.', 0, 0, '2021-02-22 18:21:17', 2, 1),
(9, 'Mercado diminui projeção para crescimento da economia em 2021', 'Mercado-diminui-projecao-para-crescimento-da-economia-em-2021', '\r\nA previsão do mercado financeiro para o crescimento da economia brasileira este ano caiu de 3,43% para 3,29%. ', 'A estimativa está no boletim Focus de hoje (22), pesquisa divulgada semanalmente pelo Banco Central (BC), com a projeção para os principais indicadores econômicos.\r\n\r\nPara o próximo ano, a expectativa para Produto Interno Bruto (PIB) - a soma de todos os bens e serviços produzidos no país - é de crescimento de 2,50%, a mesma previsão há 148 semanas consecutivas. Em 2023 e 2024, o mercado financeiro também continua projetando expansão do PIB em 2,50%.\r\n\r\nNo caso da taxa básica de juros, a Selic, as instituições financeiras consultadas pelo BC aumentaram a projeção para este ano de 3,75% para 4% ao ano. Atualmente, a Selic está estabelecida em 2% ao ano pelo Comitê de Política Monetária (Copom). Para o fim de 2022, a estimativa do mercado é que a taxa básica fique em 5% ao ano. E para o fim de 2023 e 2024, a previsão é 6% ao ano.\r\n\r\nQuando o Copom aumenta a taxa básica de juros, a finalidade é conter a demanda aquecida, e isso causa reflexos nos preços porque os juros mais altos encarecem o crédito e estimulam a poupança. Entretanto, os bancos consideram outros fatores na hora de definir os juros cobrados dos consumidores, como risco de inadimplência, lucro e despesas administrativas.', 0, 0, '2021-02-22 18:23:59', 3, 1),
(10, 'Anote estas 8 dicas para se dar bem em uma entrevista de trabalho', 'Anote-estas-8-dicas-para-se-dar-bem', 'Mesmo os mais experientes dos profissionais não estão imunes ao friozinho na barriga que antecipa uma reunião do tipo, sempre envolta em muita expectativa.', 'Mesmo os mais experientes dos profissionais não estão imunes ao friozinho na barriga que antecipa uma reunião do tipo, sempre envolta em muita expectativa.\r\n\r\nMas com as 8 dicas listadas no vídeo abaixo, você verá que se sair bem-sucedido em uma entrevista de emprego pode ser bem mais simples do que seus temores e incertezas fazem parecer.', 0, 0, '2021-02-24 19:31:44', 3, 0),
(11, 'Tragédia em unidade do Carrefour é retrato da falta de gestão de riscos', 'Tragedia-em-unidade-do-Carrefour', 'ara quem acordou com a dura notícia da morte por espancamento de João Alberto Silveira Freitas, um homem negro de 40 anos, nas dependências de um supermercado Carrefour, o slogan da multinacional fran... ', 'Na prática, o histórico recente de casos policiais nas dependências de unidades da rede se contrapõe ao discurso. Menos de um ano após o linchamento que culminou na morte de um cão que gerou indignaçã... \r\n', 0, 0, '2021-02-24 19:31:44', 2, 1),
(12, 'NASA usa tecnologia antiga em equipamentos da missão Marte 2020', 'NASA-usa-tecnologia-antiga-em-equipamentos', 'A missão Marte 2020 da NASA, que pousou no Planeta Vermelho na última quinta-feira (18), tem um custo estimado em US$ 2,4 bilhões. Apesar da fortuna investida, os equipamentos enviados possuem hardware tão potente quanto o encontrado em celulares e computadores antigos.', 'O pequeno helicóptero Ingenuity, que será a primeira aeronave a realizar voo em outro planeta, é movido por um processador Snapdragon 801 e baseado na plataforma Snapdragon Flight para drones lançada em 2015 pela Qualcomm, de acordo com a PCMag.\r\n\r\nEle tem uma CPU de 2,26 GHz, câmera de navegação de 0,5 MP e lente frontal de 13 MP, sendo capaz de gravar em 4K e transmitir dados a 250 Kbps para o rover Perseverance, a até 800 metros de distância, utilizando um transmissor operado na frequência de 900', 0, 0, '2021-02-24 19:31:44', 1, 0),
(13, 'Seu melhor amigo está tentando te dizer algo com suas patas, mas você acha que ele apenas está se coçando', 'Seu-melhor-amigo-esta-tentando-te-dizer-algo', 'A maioria dos donos ignora este comportamento comum de seu cachorro, quando poderia ser o primeiro sinal de alerta contra alergias graves!', 'Os proprietários de cachorros no Brasil estão sendo alertados para observar um comportamento específico que pode realmente ser um sinal de problemas graves de saúde.\r\n\r\nNa verdade, é algo tão comum que você provavelmente observou seu cachorro fazendo isso todos os dias e simplesmente ignorou, dizendo a si mesmo que é \"natural\" e que eles estão \"apenas brincando\"\r\n\r\nMas e se você estiver errado?\r\n\r\nEntão, qual é esse comportamento que você precisa observar?', 0, 0, '2021-02-24 19:31:44', 3, 1),
(14, '10 notícias de tecnologia para você começar o dia (24/02)', '10-noticias-de-tecnologia-para-voce-comecar', 'Bom dia! Separamos as principais notícias do mundo da Ciência e Tecnologia para você saber tudo o que aconteceu na última terça-feira (23). Para conferir cada notícia na íntegra, basta clicar nos links a seguir.', '1. Por que o Google Chrome usa tanta memória? Google Chrome foi o primeiro navegador a usar cada guia aberta de forma independente, o que é bom para a segurança da navegação.\r\n\r\n2. Nubank chega ao Google Pay para pagamentos com celular via NFC. Carteira digital permite usar cartões Nubank para pagamentos em crédito e débito.\r\n\r\n3. Covid-19: vacina da Pfizer recebe 1º registro definitivo no Brasil. Apesar do sinal verde, por enquanto não há previsão para o início do uso do imunizante no país.\r\n\r\n4. Sony dá Ratchet & Clank de graça para todos com o Play At Home. Game poderá ser resgatado em definitivo a partir de 1º de março e não precisa ser assinante da PS Plus.\r\n\r\n5. Days Gone será lançado para PC no segundo trimestre, revela Jim Ryan. Executivo da Sony revelou que uma lista grande de jogos exclusivos de PlayStation deve ir para o PC nos próximos anos.', 0, 0, '2021-02-24 19:31:44', 1, 1),
(15, 'Oferecido de graça, iPhone 12 vira celular com 5G mais vendido do mundo', 'Oferecido-de-graca-iPhone-12-vira-celular-com-5G-mais-vendido-do-mundo', 'O iPhone 12 da Apple assumiu o posto de celular com internet 5G mais vendido do mundo. Segundo a consultoria Counterpoint Research, o aparelho, comercializado em duas versões com a nova conexão móvel, respondeu por quase um quarto das vendas totais de smartphones com 5G no mundo em outubro, segundo dados divulgados nesta semana.', 'O principal mercado do iPhone 12 foi os Estados Unidos, onde a internet 5G já é oferecida por operadoras de telefonia. China e Japão foram outros países importantes para as vendas do celular.\r\n\r\nDe acordo com a consultoria, um dos principais motivos para o grande impulso nas vendas de iPhone 12, que o levou ao topo do segmento em apenas duas semanas, é que ele foi oferecido de graça por operadoras, vinculado a planos de internet e substituição do produto.', 0, 0, '2021-02-24 19:31:44', 2, 1),
(16, 'Você precisa saber destas 10 coisas se quiser trabalhar na Liv Up', 'Voce-precisa-saber-destas-10-coisas', 'Seja no home office, seja no presencial, bateu 13h a barriga ronca. E aí? Qual vai ser? Aquela feijoada que vai te fazer pescar em frente à tela até às 15h? Ou o tradicional bife a cavalo com quilos d... \r\n', 'Os amigos Victor Santos e Henrique Castellani também não gostavam lá em 2015, quando ainda eram engenheiros recém-formados, famintos, em busca de almoço na Faria Lima. Foi então que, enquanto procurav... \r\n/', 0, 0, '2021-02-24 19:31:44', 4, 0),
(17, 'Lucro da Gerdau sobe 939% no quarto trimestre', 'Lucro-da-Gerdau-sobe', 'A Gerdau anunciou que lucrou R$ 1,05 bilhão no quarto trimestre de 2020, o que representou alta de 939% sobre o mesmo período do ano anterior, quando a siderúrgica obteve lucro líquido de R$ 102 milhões. Em todo 2020, a companhia lucrou R$ 2,38 bilhões, uma evolução de 96%.', 'Segundo a Gerdau, a receita líquida foi de R$ 13,62 bilhões no último trimestre de 2020, apresentando crescimento de 43% no comparativo ao mesmo período de 2019. Já no ano passado, a companhia faturou R$ 43,81 bilhões, uma alta de 11% em relação a 2019.\r\nA Gerdau informou, ainda, que para este ano, estão previstos investimentos de R$ 3,5 bilhões, ante aportes de R$ 1,6 bilhões em 2020. Esses recursos fazem parte do plano de investimentos de R$ 6,9 bilhões de 2019 a 2021.', 0, 0, '2021-02-25 15:07:47', 4, 1),
(18, 'Locaweb compra fintech Credisfera por R$ 26,6 milhões', 'Locaweb-compra-fintech-Credisfera', 'A Locaweb anunciou ao mercado que assinou contrato de compra e venda de ações da Credisfera, uma fintech. A operação foi realizada por meio da subsidiária Tray pelo valor de R$ 26,6 milhões.', 'De acordo com o comunicado, uma parcela do valor será retida pela Tray como garantia a obrigações de indenização, e poderá ser liberada aos vendedores da Credisfera conforme o acordo.\r\n\r\nA empresa afirma que o objetivo da aquisição é oferecer “uma solução integrada”, unindo a capacidade tecnológica e inteligência de crédito da Credisfera à base de clientes da Locaweb.\r\n\r\nA Credisfera foi fundada em 2015 e oferta crédito para pequenas e médias empresas.', 0, 0, '2021-02-25 15:07:47', 4, 0),
(19, 'Roubo de contas foi o principal crime financeiro on-line de 2020, diz empresa; veja como se proteger', 'Roubo-de-contas-foi-o-principal-crime-financeiro-on-line', 'Os roubos de contas financeiras pela internet cresceram durante o ano de 2020, segundo um relatório da empresa de cibersegurança russa Kaspersky. O salto para esse tipo de ataque foi de 20% em relação a 2019 e representou mais da metade (54%) das transações fraudulentas ao redor do mundo.', 'A companhia apontou que o crescimento do uso de ferramentas digitais durante a pandemia, como o internet banking e o comércio eletrônico, impulsionou o interesse dos criminosos e abriu mais brechas para golpes.\r\n\r\nGrande parte desses ataques acontecem com o uso de engenharia social, quando um criminoso convence a vítima a passar informações (saiba como se proteger abaixo).\r\n\r\nOs esquemas mais comuns para tomar as contas financeiras são os de \"salvadores\" e de \"investidores\", segundo a Kaspersky.\r\n\r\nOs \"salvadores\" fingem ser especialistas em segurança e ligam para clientes de bancos como se fossem funcionários que estão oferecendo ajuda.\r\n\r\nEles avisam sobre cobranças ou pagamentos suspeitos e pedem para que a vítima confirme dados de sua identidade e até mesmo o token de acesso à conta (muitas vezes disponível em um aplicativo do banco). Em outros cenários, eles podem solicitar que a vítima instale um aplicativo de acesso remoto, como se isso fosse necessário para solucionar o problema.', 0, 0, '2021-02-25 15:10:13', 1, 1),
(20, 'O que é o \'pixel espião\' usado em e-mails para obter informações pessoais', 'O-que-e-o-pixel-espiao-usado-em-e-mails', 'O uso de tecnologia de rastreamento \"invisível\" em e-mails se tornou endêmico, segundo um serviço que analisou o tráfego de mensagens a pedido da BBC.', 'De acordo com a análise, feita pelo servidor de e-mail britânico Hey, dois terços dos e-mails enviados a contas pessoais de seus usuários continham um \"pixel espião\", mesmo depois de terem sido excluídos para a lixeira.\r\n\r\nOs responsáveis pela análise dizem que muitas marcas grandes usam e-mails com pixels, com exceção de \"grandes empresas de tecnologia\".\r\n\r\nOs defensores dessas ferramentas de rastreamento dizem que elas são uma tática de mercado amplamente utilizada.\r\n\r\nE várias das empresas envolvidas na prática indicam que o uso dessa tecnologia é mencionado em suas políticas de privacidade mais amplas.', 0, 0, '2021-02-25 15:10:13', 1, 1),
(21, 'Sucesso pode estar na habilidade de se colocar no lugar do outro', 'Sucesso-pode-estar-na-habilidade-de-se-colocar-no-lugar-do-outro', 'Principal Soft Skill (habilidade social e comportamental) que o mercado procura, entre candidatos a uma vaga de emprego, a empatia e o bom relacionamento interpessoal conseguiram superar até mesmo as habilidades técnicas nos processos seletivos. Segundo pesquisa da consultoria Page Personnel, de 2018, 90% dos colaboradores, de todas as áreas, são demitidos por razões comportamentais, e não é difícil imaginar por quê.', 'Seja profissional ou estudante, você, caro leitor, já deve ter se deparado — em sua empresa ou faculdade — com pessoas que ignoram o fato de estarem em ambientes coletivos ou públicos e agirem como se estivessem em casa. Falam alto, com aspereza, agressividade, não aceitam opinião alheia e nem se sujeitam às regras de convivência comum, presentes na sociedade em que vivem.\r\n\r\nA palavra-chave para entender tal situação é ‘empatia’. Definida como habilidade comportamental de uma pessoa se colocar no lugar da outra, ela ajuda a desenvolver aspectos como maturidade emocional, educação, limites e senso coletivo.\r\n\r\nA principal virtude da empatia é possibilitar compreender o outro: suas ideias, motivações, dificuldades e necessidades. Desse modo, as pessoas cedem espaços, mas também impõem limites; com isso é criado um ambiente harmônico com regras de convivência minimamente definidas.\r\n\r\nPor outro lado, atritos gerados em espaços laborais —  por comportamentos impróprios — são motivados, em geral, pela falta de empatia, por isso, a conexão entre o termo e o bom relacionamento interpessoal. Fofocas, intrigas e invejas, criadas em ambientes de trabalho ou de estudo, têm em sua origem ausência da Soft Skill, e de limites próprios.\r\n\r\nCom o tempo, o desgaste gerado pela falta da mais básica habilidade de convivência resulta em demissões. Por esse motivo, os setores de recursos humanos tentam captar já no processo seletivo pessoas que possuem empatia desenvolvida ou excluir aquelas que poderiam gerar atritos desnecessários, caso fossem contratadas.', 0, 0, '2021-02-25 15:13:03', 3, 1),
(22, 'Em nota, Abrasel apoia medidas contra festas clandestinas e pede menos restrições para setor de bares e restaurantes', 'Em-nota,-Abrasel-apoia-medidas-contra-festas-clandestinas', 'A Abrasel SP (Associação Brasileira de Bares e Restaurantes de São Paulo) divulgou uma nota nesta quarta-feira (24/02) na qual diz ser contra as festas clandestinas e aglomerações irregulares, ao mesmo tempo em que pede menos restrições para o setor de bares e restaurantes. A nota vem após anúncio do governador João Dória, que declarou toque de recolher na capital paulista entre às 23h e 5h, a partir de sexta-feira (26/2).', 'Na mensagem, Percival Maricato, presidente do conselho estadual da Associação Brasileira de Bares e Restaurantes de São Paulo, disse que compartilha das preocupações do governo e é a favor de evitar aglomerações e festas clandestinas.\r\nNo entanto, a Abrasel SP disse não concordar com as restrições a restaurantes e bares \"Como temos argumentado, e o governador reconhece, a maioria dos estabelecimentos tem obedecido todas as regras: medição da temperatura, redução na ocupação de assentos, distanciamento entre mesas, higienização constante de mesas e equipamentos e garçons paramentados, contribuindo para evitar a contaminação\", diz a nota.\r\n\r\nNa mensagem, a associação pede que o governo permita a ocupação de 60% dos assentos e o uso de mesas nas calçadas. \"Temos que salvar os empregos e os estabelecimentos.\" Segundo o presidente, será necessário uma década para retomar a movimentação do setor pré-pandemia.\r\n\r\nDe acordo com a Abrasel SP, 12 mil estabelecimentos já fecharam em definitivo na cidade de São Paulo e 50 mil negócios foram fechados no Estado. O setor perde, por dia, cerca de 300 estabelecimentos e 1,8 mil empregos, diz a nota.', 0, 0, '2021-02-25 15:13:03', 3, 0),
(23, 'Vivo recruta mais de 200 profissionais de vendas \r\n', 'Vivo-recruta-mais-de-200-profissionais-de-vendas ', 'A Vivo One, braço de vendas corporativas da Vivo, está em busca de 200 profissionais de vendas para trabalhar em São Paulo. O processo seletivo será online e os recrutados começarão a trabalhar em hom... \r\n', 'As oportunidades fazem parte do Programa Novos Talentos Vivo One que, além de recrutar, ainda treinará os selecionados sobre processos, ferramentas e rotinas comerciais, soluções de telecom (Móvel, Fi... \r\n', 0, 0, '2021-02-25 15:15:20', 2, 1),
(24, 'Magazine Luiza cria plataforma de vendas grátis para autônomos e empresas \r\n', 'Magazine-Luiza-cria-plataforma-de-vendas-gratis', 'São Paulo – O Magalu, marketplace da Magazine Luiza, lançou hoje o Parceiro Magalu, uma plataforma digital de vendas grátis para ajudar autônomos, micro e pequenos varejistas a continuarem a vender du... \r\n', 'Em nota, a empresa informa que o Brasil tem hoje 5 milhões de empresas varejistas — a maior parte delas com faturamento de até 5 milhões de reais ao ano. Desse total, apenas cerca de 50 000 vendem seu... \r\n', 0, 0, '2021-02-25 15:15:20', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bloqueado` tinyint(1) NOT NULL DEFAULT '0',
  `deletado` tinyint(1) NOT NULL DEFAULT '0',
  `data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `bloqueado`, `deletado`, `data_cadastro`) VALUES
(1, 'Robson', 'robson@gmail.com', '$2y$10$wbIE86T1IhYq/JuXoUgH2.H8MWen44TH.yBPr.4ZSe/2pOPXRnnw.', 0, 0, '2021-02-18 20:18:52'),
(2, 'Adriele Lurdes', 'lurdeixon@gmail.com', '$2y$10$RFMqN2B0eRM698e05mk5b.1xbjOhK2kDFIe9mxOJuPPzdENoNrxk.', 0, 0, '2021-02-19 15:05:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_post_categoria` (`categoria_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
