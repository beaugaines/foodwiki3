$(document).ready(function() {
  $counter = 1;
  $('.nested-fields').on('cocoon:after-insert', function(e, insertedItem) {
    insertedItem.find('.js-component-id').val($counter);
    $counter += 1;
  })
});
