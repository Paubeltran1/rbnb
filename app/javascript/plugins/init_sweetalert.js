import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options);
      const link = document.querySelector('#delete-link');
      setTimeout(function(){
          link.click();
      }, 2500);

    });
  }
};

export { initSweetalert };
