<?php
require_once 'data.php';
?>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Responsive Resume/CV Template for Developers</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Responsive HTML5 Resume/CV Template for Developers">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">
    <link rel="shortcut icon" href="favicon.ico">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,500,400italic,300italic,300,500italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.css">

    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="assets/css/styles.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="wrapper">
    <div class="sidebar-wrapper">
        <div class="profile-container">
<!--            <img class="profile" src="assets/images/profile.png" alt=""/>-->
            <h1 class="name"><?php echo $aboutData['name']; ?></h1>
            <h3 class="tagline"><?php echo $aboutData['post']; ?></h3>
        </div><!--//profile-container-->

        <div class="contact-container container-block">
            <ul class="list-unstyled contact-list">
                <li class="email"><i class="fa fa-envelope"></i>
                    <a href="mailto: <?= $aboutData['email']; ?>">
                        <?= $aboutData['email']; ?></a></li>
                <li class="phone"><i class="fa fa-phone"></i>
                    <a href="tel:<?= $aboutData['phone']; ?>">
                        <?= $aboutData['phone']; ?></a></li>

                <li class="linkedin"><i class="fa fa-linkedin"></i>
                    <a href="<?= $aboutData['linkedin']; ?>"
                       target="_blank"><?= $aboutData['linkedin']; ?></a>
                </li>
                <li class="github"><i class="fa fa-github"></i>
                    <a href="<?= $aboutData['github']; ?>"
                    target="_blank"><?= $aboutData['github']; ?></a>
                </li>
                <li class="twitter"><i class="fa fa-twitter"></i>
                    <a href="<?= $aboutData['twitter']; ?>"
                    target="_blank"><?= $aboutData['twitter']; ?></a>
                </li>
            </ul>
        </div><!--//contact-container-->
        <div class="education-container container-block">
                <h2 class="container-block-title">Education</h2>
            <?php foreach ($educationData as $value) { ?>
                    <div class="item">
                        <h4 class="degree"><?php echo $value['courses'] ?></h4>
                        <h5 class="meta"><?php echo $value['training'] ?></h5>
                        <div class="time"><?php echo $value['yearStart'] ?> - <?php echo $value['yearEnd'] ?></div>
                    </div><!--//item-->
            <?php } ?>

        </div><!--//education-container-->

        <div class="languages-container container-block">
            <h2 class="container-block-title">Languages</h2>
            <ul class="list-unstyled interests-list">
                <?php foreach ($langData as $lang) {?>
                    <li><?php echo $lang['lang']; ?><span class="lang-desc">(<?php echo $lang['hold']; ?>)</span></li>
                <?php } ?>
            </ul>
        </div><!--//interests-->

        <div class="interests-container container-block">
            <h2 class="container-block-title">Interests</h2>
            <ul class="list-unstyled interests-list">
                <?php foreach($interestsData as $int) { ?>
                <li><?php echo $int['title']; ?></li>
                <?php } ?>
            </ul>
        </div><!--//interests-->

    </div><!--//sidebar-wrapper-->

    <div class="main-wrapper">

        <section class="section summary-section">
            <h2 class="section-title"><i class="fa fa-user"></i>Career Profile</h2>
            <div class="summary">
                <p><?= $aboutCareer['title'] ?></p>
            </div><!--//summary-->
        </section><!--//section-->

        <section class="section experiences-section">
            <h2 class="section-title"><i class="fa fa-briefcase"></i>Experiences</h2>
            <?php foreach($career as $job) { ?>
            <div class="item">
                <div class="meta">
                    <div class="upper-row">
                        <h3 class="job-title"><?php echo $job['post']; ?></h3>
                        <div class="time"><?php echo $job['yearStart']; ?> - <?php echo $job['yearEnd']; ?></div>
                    </div><!--//upper-row-->
                    <div class="company"><?php echo $job['place']; ?></div>
                </div><!--//meta-->
                <div class="details">

                    <p><?php echo $job['duty']; ?> </p>
                </div><!--//details-->
            </div><!--//item-->

            <?php } ?>
        </section><!--//section-->

        <section class="section projects-section">
            <h2 class="section-title"><i class="fa fa-archive"></i>Projects</h2>
            <div class="intro">
                <p><?php echo $about['title']; ?></p>
            </div><!--//intro-->
            <?php foreach ($projectsData as $project) { ?>
            <div class="item">
                <span class="project-title">
                    <a href="<?php echo $project['href']; ?>"
                       target="_blank"><?php echo $project['projectus']; ?></a></span> -
                <span class="project-tagline"><?php echo $project['description']; ?></span>
            </div><!--//item-->
            <?php } ?>
        </section><!--//section-->

        <section class="skills-section section">
            <h2 class="section-title"><i class="fa fa-rocket"></i>Skills &amp; Proficiency</h2>
            <div class="skillset">
                <?php foreach ($level as $lev) { ?>
                <div class="item">
                    <h3 class="level-title"><?php echo $lev['skill']; ?></h3>
                    <div class="level-bar">
                        <div class="level-bar-inner" data-level="<?php echo $lev['percent']; ?>">
                        </div>
                    </div><!--//level-bar-->
                </div><!--//item-->
                <?php } ?>

            </div>
        </section><!--//skills-section-->

    </div><!--//main-body-->
</div>

<footer class="footer">
    <div class="text-center">
        <!--/* This template is released under the Creative Commons Attribution 3.0 License. Please keep the attribution link below when using for your own project. Thank you for your support. :) If you'd like to use the template without the attribution, you can check out other license options via our website: themes.3rdwavemedia.com */-->
        <small class="copyright">WEBDesigned with <i class="fa fa-heart"></i> by <a href="http://themes.3rdwavemedia.com" target="_blank">Roev Evgen</a> for developers</small>
    </div><!--//container-->
</footer><!--//footer-->

<!-- Javascript -->
<script type="text/javascript" src="assets/plugins/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- custom js -->
<script type="text/javascript" src="assets/js/main.js"></script>
</body>
</html>