<script language="JavaScript" type="text/javascript">
    function ajax_post() {
        var previouscontent = document.getElementById("statusx").value;
        // Create our XMLHttpRequest object
        var hr = new XMLHttpRequest();
        // Create some variables we need to send to our PHP file
        var url = "/ajax/loadmoreitems";
        /*var fn = document.getElementById("first_name").value;
        var ln = document.getElementById("last_name").value;
        var vars = "firstname=" + fn + "&lastname=" + ln;*/
        //var vars = "firstname=" + "fn" + "&lastname=" + "ln";
        hr.open("POST", url, true);
        // Set content type header information for sending url encoded variables in the request
        hr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        // Access the onreadystatechange event for the XMLHttpRequest object
        hr.onreadystatechange = function() {
            if (hr.readyState == 4 && hr.status == 200) {
                var return_data = hr.responseText;
                document.getElementById("statusx").innerHTML = previouscontent + return_data;
            }
        }
        // Send the data to PHP now... and wait for response to update the status div
        var lines = "ennyisor=1";
        hr.send(lines); // Actually execute the request
        //document.getElementById("statusx").innerHTML = "processing...";
    }
</script>
<script>
    $(window).scroll(function () {
   if ($(window).scrollTop() >= $(document).height() - $(window).height() - 500) {
      alert('trigger');
      ajax_post();
   }
});
</script>
    <div id="statusx"></div>
    <!--<input name="myBtn" type="submit" value="Submit Data" onClick="javascript:ajax_post();">-->

