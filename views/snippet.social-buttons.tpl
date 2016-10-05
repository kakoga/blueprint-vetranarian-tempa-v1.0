<div class="mn-social-bottom-c" align="center">
	<p>Share this article:</p>
	
	<a class="mn-social-bottom"><i class="fa fa-facebook"></i></a>
	<a class="mn-social-bottom"><i class="fa fa-twitter"></i></a>
	<a class="mn-social-bottom"><i class="fa fa-linkedin"></i></a>
	<a class="mn-social-bottom"><i class="fa fa-google-plus"></i></a>
	<a class="mn-social-bottom"><i class="fa fa-pinterest-p"></i></a>
	<a class="mn-social-bottom" onclick="$('#mn-social-bottom-hidden').slideToggle();$('.fa-plus').toggleClass('mn-social-r')">
		<i class="fa fa-plus"></i>
	</a>
	<div id="mn-social-bottom-hidden">
		<a class="mn-social-bottom"><i class="fa fa-tumblr"></i></a>
		<a class="mn-social-bottom"><i class="fa fa-get-pocket"></i></a>
		<a class="mn-social-bottom"><i class="fa fa-stumbleupon"></i></a>
		<a class="mn-social-bottom"><i class="fa fa-reddit"></i></a>
		<a class="mn-social-bottom"><i class="fa fa-envelope"></i></a>
		<a class="mn-social-bottom"><i class="fa fa-delicious"></i></a>
	</div>
</div>


<script>
	
	var url = window.location;
	var title = document.title;
	var mnsocial = document.getElementsByClassName('mn-social-bottom');
	mnsocial[0].href = 'https://www.facebook.com/sharer/sharer.php?u=' + url;
	mnsocial[1].href = 'https://twitter.com/home?status=' + url;
	mnsocial[2].href = 'https://www.linkedin.com/shareArticle?mini=true&url=' + url;
	mnsocial[3].href = 'https://plus.google.com/share?url=' + url;
	mnsocial[4].href = 'https://pinterest.com/pin/create/link/?url=' + url;
	mnsocial[6].href = 'http://www.tumblr.com/share/link?url=' + url;
	mnsocial[7].href = 'https://getpocket.com/save?url=' + url;
	mnsocial[8].href = 'http://www.stumbleupon.com/submit?url=' + url;
	mnsocial[9].href = 'http://www.reddit.com/submit?url=' + url;
	mnsocial[10].href = 'mailto:?&subject=' + url + '&body=' + title + ', ' + url;
	mnsocial[11].href = 'https://delicious.com/share?url=' + url;
	$('.mn-social-bottom').click(function(){
		window.open($(this).attr('href'),'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=600,height=350');
		return false;
	});

</script>