@model IEnumerable<MVCImageSliderFromFolder.Models.Slider>

@{
    Layout = "~/Views/Home/_Layout.cshtml";
}

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Tech Carnival</title>

    <link rel="stylesheet" href="../assets/bjqs.css">
    <link href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../assets/demo.css">
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="../assets/js/bjqs-1.3.min.js"></script>
</head>
<body>
    <form id="form1">
        <div id="container">
            <h2>The DevOps Mindset.</h2>
            <div id="banner-fade">
                <ul class="bjqs">
                    @foreach (var item in Model)
                    {
                        <li>
                            <img src='@Html.DisplayFor(modelItem => item.src)'
                                 title='@Html.DisplayFor(modelItem => item.title)' alt="">
                        </li>

                    }

                </ul>
            </div>

            @*<script class="secret-source" style="display:none;">
                    jQuery(document).ready(function ($) {

                        $('#banner-fade').bjqs({
                            height: 320,
                            width: 620,
                            responsive: true
                        });

                    });
                </script>*@
        </div>
        <div class="row">
            <div class="col-md-4">
                <h2>What is DevOps?</h2>
                <p>This portal is your kickstart to setting up Micorsoft Azure DevOps for your project.</p>

                <p><a class="btn btn-default" href="https://dev.azure.com/ElectronicPayments/TechCarnival">Learn more &raquo;</a></p>
            </div>

            <div class="col-md-4">
                <h2>What is Continuous Integration?</h2>
                <p>
                    Continuous Integration (CI) is a development practice where developers integrate code into a shared repository frequently, preferably several times a day. Each integration can then be verified by an automated build and automated tests. While automated testing is not strictly part of CI it is typically implied.

                    One of the key benefits of integrating regularly is that you can detect errors quickly and locate them more easily. As each change introduced is typically small, pinpointing the specific change that introduced a defect can be done quickly.

                    Continuous Integration doesn’t get rid of bugs, but it does make them dramatically easier to find and remove.

                    Martin Fowler, Chief Scientist, ThoughtWorks
                </p>
                <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=273732">Learn more &raquo;</a></p>
            </div>

            <div class="col-md-4">
                <h2>What is Continous Delivery?</h2>
                <p>Continuous deployment is a strategy for software releases wherein any code commit that passes the automated testing phase is automatically released into the production environment, making changes that are visible to the software's users.</p>
                <p><a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301867">Learn more &raquo;</a></p>
            </div>
        </div>

        <script src="../assets/js/libs/jquery.secret-source.min.js"></script>
        <script>
            jQuery(function ($) {

                $('.secret-source').secretSource({
                    includeTag: false
                });

                $('#banner-fade').bjqs({
                    height: 320,
                    width: 620,
                    responsive: true
                });
            });
        </script>
    </form>
</body>
</html>

