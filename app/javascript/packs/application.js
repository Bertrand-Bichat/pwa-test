// External imports
import "bootstrap";

window.addEventListener('load', () => {
  navigator.serviceWorker.register('/service-worker.js').then(registration => {
    console.log('ServiceWorker registered: ', registration);

    var serviceWorker;
    if (registration.installing) {
      serviceWorker = registration.installing;
      console.log('Service worker installing.');
    } else if (registration.waiting) {
      serviceWorker = registration.waiting;
      console.log('Service worker installed & waiting.');
    } else if (registration.active) {
      serviceWorker = registration.active;
      console.log('Service worker active.');
    }

    window.Notification.requestPermission().then(permission => {
      if(permission !== 'granted'){
        throw new Error('Permission not granted for Notification');
      }
    });
  }).catch(registrationError => {
    console.log('Service worker registration failed: ', registrationError);
  });
});


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

