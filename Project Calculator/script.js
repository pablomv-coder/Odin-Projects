function add(a, b) {
    return a + b;
}

function subtract(a, b) {
    return a - b;
}

function multiply(a, b) {
    return a * b;
}

function divide(a, b) {
    return a / b;
}

function operate(operator, a, b) {
    switch (operator) {
        case '+': return add(a, b);
        case '-': return subtract(a, b);
        case '*': return multiply(a, b);
        case '/': return b === 0 ? "No se puede dividir por cero" : divide(a, b);
        default: return "Operador no válido";
    }
}

// Aquí agregarías el código para manejar los eventos de clic y actualizar el display.

let currentOperation = null;
let firstOperand = '';
let secondOperand = '';

const display = document.getElementById('display');
const digitButtons = document.querySelectorAll('.digit');
const operatorButtons = document.querySelectorAll('.operator');
const clearButton = document.getElementById('clear');

digitButtons.forEach(button => {
    button.addEventListener('click', () => {
        if (currentOperation && firstOperand !== '') {
            secondOperand += button.textContent;
            display.textContent = secondOperand;
        } else {
            firstOperand += button.textContent;
            display.textContent = firstOperand;
        }
    });
});

operatorButtons.forEach(button => {
    button.addEventListener('click', () => {
        if (firstOperand !== '') {
            currentOperation = button.value;
        }
    });
});

document.querySelector('.equals').addEventListener('click', () => {
    if (firstOperand !== '' && secondOperand !== '' && currentOperation) {
        const result = operate(currentOperation, Number(firstOperand), Number(secondOperand));
        display.textContent = result;
        firstOperand = result;
        secondOperand = '';
        currentOperation = null;
    }
});

clearButton.addEventListener('click', () => {
    firstOperand = '';
    secondOperand = '';
    currentOperation = null;
    display.textContent = '0';
});


document.addEventListener('keydown', (e) => {
    if (e.key >= 0 && e.key <= 9) {
        if (currentOperation && firstOperand !== '') {
            secondOperand += e.key;
            display.textContent = secondOperand;
        } else {
            firstOperand += e.key;
            display.textContent = firstOperand;
        }
    } else if (e.key === '+' || e.key === '-' || e.key === '*' || e.key === '/') {
        currentOperation = e.key;
    } else if (e.key === 'Enter' || e.key === '=') {
        if (firstOperand !== '' && secondOperand !== '' && currentOperation) {
            const result = operate(currentOperation, Number(firstOperand), Number(secondOperand));
            display.textContent = result;
            firstOperand = result.toString();
            secondOperand = '';
            currentOperation = null;
        }
    } else if (e.key === 'Backspace') {
        if (secondOperand !== '') {
            secondOperand = secondOperand.slice(0, -1);
            display.textContent = secondOperand;
        } else if (currentOperation) {
            currentOperation = null;
        } else if (firstOperand !== '') {
            firstOperand = firstOperand.slice(0, -1);
            display.textContent = firstOperand;
        }
    } else if (e.key === 'Escape') {
        firstOperand = '';
        secondOperand = '';
        currentOperation = null;
        display.textContent = '0';
    } else if (e.key === '.' && !display.textContent.includes('.')) {
        if (currentOperation && secondOperand !== '') {
            secondOperand += '.';
            display.textContent = secondOperand;
        } else if (!currentOperation) {
            firstOperand += '.';
            display.textContent = firstOperand;
        }
    }
});