#!/data/data/com.termux/files/usr/bin/bash

echo "=== CALCULADORA ==="
read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read -p "Digite a opção: " op

case $op in
    1) echo "Resultado: $(echo "$num1 + $num2" | bc)" ;;
    2) echo "Resultado: $(echo "$num1 - $num2" | bc)" ;;
    3) echo "Resultado: $(echo "$num1 * $num2" | bc)" ;;
    4) echo "Resultado: $(echo "scale=2; $num1 / $num2" | bc)" ;;
    *) echo "Opção inválida." ;;
esac
