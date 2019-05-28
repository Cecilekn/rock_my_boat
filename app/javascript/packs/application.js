import "bootstrap";
import { initAutocomplete } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

if (document.querySelector(".banner")) {
  console.log("from app.js banner")
  const navbar = document.querySelector(".navbar");
    navbar.classList.add("navbar-transparent");
};

initMapbox();
initAutocomplete();




