$this = $('.navbar-nav li #newUser');
$this.click(function(e) {
	e.preventDefault();
	$('.escondido').slideUp(400);
	if (e.isDefaultPrevented()) {
		continueClicked();
	}

	function continueClicked() {
		setTimeout(function() {
			location.href = $this.attr('href')
		}, 500);
		// $('.navbar-nav li #newUser').trigger('click');
	}
})

$nc = $('#newAcc');
$nc.click(function(e) {
	e.preventDefault();
	$('.escondido').slideUp(400);
	if (e.isDefaultPrevented()) {
		continueClicked();
	}

	function continueClicked() {
		setTimeout(function() {
			location.href = $nc.attr('href')
		}, 500);
		// $('.navbar-nav li #newUser').trigger('click');
	}
})

$lg = $('.navbar-nav li #log-in');
$lg.click(function(e) {
	e.preventDefault();
	$('.escondido').slideUp(400);
	if (e.isDefaultPrevented()) {
		continueClicked();
	}

	function continueClicked() {
		setTimeout(function() {
			location.href = $lg.attr('href')
		}, 500);
		// $('.navbar-nav li #newUser').trigger('click');
	}
})

$('.escondido').slideDown(400);