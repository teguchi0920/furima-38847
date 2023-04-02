window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const addTaxPrice = document.getElementById("add-tax-price")
    const priceContent = document.getElementById("profit")
    addTaxPrice.innerHTML = Math.floor(inputValue /10) 
    priceContent.innerHTML = Math.floor(inputValue * 0.9)
  })
});

