// External imports
import "bootstrap";
// Internal imports
import askPushNotifications from '../plugins/push_notifications';

window.addEventListener('load', () => {
  if ("serviceWorker" in navigator) {
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
  }
});


// force to relaod the page when internet connexion is offline to render the offline page in cache
window.addEventListener('offline', () => {
  window.location.reload();
});



document.addEventListener('turbolinks:load', () => {
  askPushNotifications();
});
