const pay = () => {
  const payjp = Payjp('pk_test_9a647ea059fea6ed986e955b')
  const elements = payjp.elements();
  const numberElement = elements.create('cardNumber');
  const expiryElement = elements.create('cardExpiry');
  const cvcElement = elements.create('cardCvc');

  numberElement.mount('#card-number');
  expiryElement.mount('#card-expiry');
  cvcElement.mount('#card-cvc');

  const submit = document.getElementById("button");
  if (!submit){ return false;}
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    payjp.createToken(numberElement).then(function (response){
      if (response.error){
      } else{
        const token = response.id;
        console.log(token)
      }
    });
  });
};
  
window.addEventListener("load", pay);
