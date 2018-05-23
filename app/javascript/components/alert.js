import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    event.preventDefault()
    swal({
      title: "Bike requested",
      icon: "success"
    })
  });
}

export { bindSweetAlertButtonDemo };
