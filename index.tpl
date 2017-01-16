<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css" media="screen,projection"/>
        <link type="text/css" rel="stylesheet" href="index.css" media="screen,projection"/>
        <meta charset="utf-8">
        <title>Feed Mii Tool</title>
        <meta name="description" content="Feed Mii Tool is developed for gamers who play Feed Mii in StreetPass Mii Plaza on 3DS.">
        <meta name="keywords" content="3ds,feed,mii,streetpass,street,pass,4star,mii,plaze">
        <meta name="author" content="Catscarlet">
    </head>
    <script type="text/javascript" src="lib/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="materialize/js/materialize.min.js"></script>

    <script type="text/javascript" src="lib/CryptoJS/rollups/aes.js"></script>
    <script type="text/javascript" src="lib/CryptoJS/components/pad-zeropadding.js"></script>
    <script type="text/javascript" src="lib/CryptoJS/rollups/md5.js"></script>

    <script type="text/javascript" src="cook.js"></script>
    <script type="text/javascript" src="login.js"></script>
    <body>
        <nav>
            <div class="nav-wrapper green darken-2">
                <a href="" class="brand-logo center">Feed Mii Tool</a>
                <ul class="right hide-on-med-and-down">
                    {include file='navmenulist.tpl'}
                </ul>
                <ul class="side-nav" id="mobile-demo">
                    {include file='navmenulist.tpl'}
                </ul>
            </div>
        </nav>
        <div class="container">
            <h4>
                Choose ingredients you have:
            </h4>

            <div class="row row-table">
                <hr>
                {foreach $ingredients as $ingredient}
                <div id="{(int) base_convert($ingredient['value'], 2, 10)}" class="col s2">
                    <img class="responsive-img circle ingredients" src="img/{$ingredient['img']}" alt="{$ingredient['name']}"/>
                    <p class="center-align">{$ingredient['name']}</p>
                    {if $ingredient@key eq 5}
                    <br>
                    {/if}
                </div>

                {/foreach}
                <hr>
                <p class="center-align">
                    <a class="waves-effect waves-light btn deep-orange accent-4" id="cook" name="button">Cook!</a>
                    <a class="waves-effect waves-light btn cyan darken-3" id="reset" name="button">Reset!</a>
                </p>

            </div>
            <hr>
            <div id="table"></div>
            <div>
                <script type="text/javascript">
                    var cnzz_protocol = (("https:" == document.location.protocol)
                        ? " https://"
                        : " http://");
                    document.write(unescape("%3Cspan id='cnzz_stat_icon_4502669'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/stat.php%3Fid%3D4502669' type='text/javascript'%3E%3C/script%3E"));
                </script>
            </div>
        </div>

        {include file='modalTpl/about.tpl'}
        {include file='modalTpl/changelog.tpl'}
        {include file='modalTpl/login.tpl'}

    </body>
</html>
