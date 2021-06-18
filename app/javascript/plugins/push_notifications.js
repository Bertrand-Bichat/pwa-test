const askPushNotifications = () => {
  const pushButton = document.querySelector('#push-permission');

  pushButton?.addEventListener('click', (event) => {
    event.preventDefault();
    window.Notification.requestPermission().then(permission => {
      if (permission !== 'granted'){
        throw new Error('Permission not granted for Notification');
      } else if (permission !== 'default') {
        pushButton.classList.add('hidden');
      }
    });
  });

  if (Notification.permission !== 'default') {
    pushButton.classList.add('hidden');
  }

}

export default askPushNotifications;
