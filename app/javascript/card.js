const pay = () => {
  const submit = document.getElementById("button");
  if (!submit){ return false;}
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    console.log("フォーム送信時にイベント発火")
  });
};

window.addEventListener("load", pay);