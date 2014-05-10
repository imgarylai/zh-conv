
$(document).ready(function () {
  var clip = new ZeroClipboard($('.copy-button'));

  clip.on('load', function (clip) {
    clip.on('mouseover', function ( event ) {
      $(this).tooltip('hide').attr('data-original-title', 'copy to clipboard').tooltip('show');
    });

    clip.on('mouseout', function ( event ) {
      $(this).tooltip('hide');
    });

    clip.on('complete', function ( event ) {
      console.log('copied');
      $(this).tooltip('hide').attr('data-original-title', 'copied').tooltip('show');
    });
    clip.on( 'wrongflash noflash', function() {
      ZeroClipboard.destroy();
    });
  });

});
