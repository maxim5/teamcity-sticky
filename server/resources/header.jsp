<style type="text/css">
  .sticky .headBG {
    width: 100%;
    height: auto;
    background: white;
    padding-bottom: 0;
    z-index: 10;

    border-bottom: 1px solid #C2C2C2;
    box-shadow: 0 3px 4px #E4E4E4;
  }

  .sticky #sidebar-wrapper {
    background: white;
    z-index: 10;
  }

  #allProjectsPopup {
    position: fixed !important;
    top: 31px !important;
  }
</style>

<script type="text/javascript" src="http://stickyjs.com/jquery.sticky.js"></script>
<script type="text/javascript">
  $j(document).ready(function(){
    $j(".headBG").sticky({
      topSpacing: 0,
      className: "sticky"
    });

    var sidebar = $j(".admin-sidebar");
    if (sidebar.length) {
      sidebar.children().wrapAll("<div id='sidebar-wrapper' />");
      $j("#sidebar-wrapper").sticky({
        topSpacing: 70,
        className: "sticky"
      }).css({
        width: sidebar.width()
      });
    }
  });
</script>
