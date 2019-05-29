import "../plugins/flatpickr"
import "bootstrap";

import { initAutocomplete } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { initSweetalert } from '../plugins/init_sweetalert';
import { initUpdateNavbarOnScroll } from '../components/navbar';

if (document.querySelector(".banner") === null) {
  console.log('hello')
  document.querySelector('.navbar-lewagon').classList.add('navbar-blue');
};

if (document.querySelector(".banner")) {
  initUpdateNavbarOnScroll();
};

initMapbox();
initAutocomplete();


initSweetalert('#sweet-alert-demo', {
  title: "Your booking is registered",
  text: "The boat owner will get a message in order to validate your booking",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#my_bookings_link');
    link.click();
  }
});
