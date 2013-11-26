(function() {
  $(function() {
    $('select#portfolio_country').change(function(event) {
      var country_code, select_wrapper, url;
      select_wrapper = $('#region_code_wrapper');
      $('select', select_wrapper).attr('disabled', true);
      country_code = $(this).val();
      url = "/admin/subregion_options?parent_region=" + country_code;
      return select_wrapper.load(url, function(){
      	if($('select#portfolio_region').length != 0){select_box();}
      });
    });
  });

}).call(this);
