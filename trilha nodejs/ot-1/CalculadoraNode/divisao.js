// Função de divisão — recebe dois parâmetros e retorna o quociente
const divisao = function(a, b) {
    // Boa prática: evitar divisão por zero
    if (b === 0) {
      return 'Erro: não é possível dividir por zero!';
    }
    return a / b;
  };
  
  module.exports = divisao;