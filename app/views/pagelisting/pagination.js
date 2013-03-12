$('.page').html("<%= escape_javascript render(:partial  => 'pagination', :formats => [:html]) %>");
