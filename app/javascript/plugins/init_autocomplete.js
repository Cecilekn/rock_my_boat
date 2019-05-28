import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('city');
  const boatLocation = document.getElementById('boat_location');
  if (addressInput) {
    places({ container: addressInput });
  }
  if (boatLocation) {
    places({ container: boatLocation });
  }
};

export { initAutocomplete };
