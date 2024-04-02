const container = document.getElementById('container');
const changeGridButton = document.getElementById('change-grid');

function createGrid(size = 16) {
  container.innerHTML = '';
  const divSize = 960 / size;

  for (let i = 0; i < size * size; i++) {
    const div = document.createElement('div');
    div.classList.add('grid-div');
    div.style.width = `${divSize}px`;
    div.style.height = `${divSize}px`;
    div.addEventListener('mouseover', changeColor);
    container.appendChild(div);
  }
}

function changeColor(e) {
  e.target.style.backgroundColor = 'black';
}

function changeGridSize() {
  const size = prompt('Ingresa el número de divisiones por lado (máximo 100)');
  if (size && size <= 100) {
    createGrid(size);
  } else {
    alert('Por favor, ingresa un número válido entre 1 y 100.');
  }
}

createGrid();
changeGridButton.addEventListener('click', changeGridSize);