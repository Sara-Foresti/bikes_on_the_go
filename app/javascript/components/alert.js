import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    event.preventDefault()
    const form = document.getElementById("new_booking")
    swal({
      title: "Bike requested",
      icon: "success"
    }).then(
      function(){form.submit();
      })


    // close = document.querySelector(".swal-button")
    // close.addEventListener('click', () => {
    //   event.run()
    // });
  });
}

export { bindSweetAlertButtonDemo };
