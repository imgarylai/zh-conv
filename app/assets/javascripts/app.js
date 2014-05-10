
$(document).ready(function () {

  var button = $('.copy-button');
  button.tooltip();
  var clip = new ZeroClipboard(button);

  clip.on('mouseover', function ( event ) {
    $(this).attr('data-original-title', 'copy to clipboard').tooltip('show');
  });

  clip.on('mouseout', function ( event ) {
    $(this).tooltip('hide');
  });

  clip.on('complete', function ( event ) {
    console.log('copied');
    $(this).attr('data-original-title', 'copied').tooltip('show');
  });
  clip.on( 'wrongflash noflash', function() {
    ZeroClipboard.destroy();
  });

});
