;(function () {
  var timeOutEvent = 0;

  document.addEventListener('touchstart', e => {
                            let element = e.target
                            if (element.tagName.toLowerCase() == 'img' && element.getAttribute('forbidden-save') != 'true') {
                            timeOutEvent = setTimeout(qlDidLongPress, 1000, element);
                            }
                            });

  document.addEventListener('touchend', e => {
                            clearTimeout(timeOutEvent);
                            });

  document.addEventListener('touchmove', e => {
                            clearTimeout(timeOutEvent);
                            });

  function qlDidLongPress(e){
  timeOutEvent = 0;
  window.location.href = "QLWebViewLongPress:" + e.src;
  }
  })()
