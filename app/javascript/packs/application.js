import "bootstrap";
import "../plugins/flatpickr"

// Material Select
//$('.mdb-select').materialSelect({});

import { initSweetalert } from '../plugins/init_sweetalert';


initSweetalert('#sweet-alert-demo', {
  title: "Etes vous sûr?",
  icon: "warning"
}, (value) => {
  console.log(value);
  if (value) {

    const link = document.querySelector('#delete-link');

    link.click();
  }
});

