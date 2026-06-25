// Importa todos os módulos criados usando require
const SomaFunc        = require('./somar');
const SubtracaoFunc   = require('./subtracao');
const MultiplicacaoFunc = require('./multiplicacao');
const DivisaoFunc     = require('./divisao');

// Executa cada operação e exibe o resultado com template strings
console.log(`O valor da soma é: ${SomaFunc(1, 2)}`);           //   3
console.log(`O valor da divisão é: ${DivisaoFunc(10, 2)}`);    // 5
console.log(`O valor da multiplicação é: ${MultiplicacaoFunc(4, 5)}`); // 20
console.log(`O valor da subtração é: ${SubtracaoFunc(10, 2)}`); // 8