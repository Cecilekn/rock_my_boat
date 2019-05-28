import "bootstrap";

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

if (document.querySelector(".banner")) {
  const navbar = document.querySelector(".navbar");
    navbar.classList.add("navbar-transparent");
};
