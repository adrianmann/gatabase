$("#team_club").empty()
  .append("<%= escape_javascript(render(:partial => @clubs)) %>")