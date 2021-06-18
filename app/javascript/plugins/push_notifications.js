const askPushNotifications = () => {
  const pushButton = document.querySelector('#push-permission');

  pushButton?.addEventListener('click', () => {
    window.Notification.requestPermission().then(permission => {
      if(permission !== 'granted'){
        throw new Error('Permission not granted for Notification');
      }
    });
  });

}

export default askPushNotifications;
