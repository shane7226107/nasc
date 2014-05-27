# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
console.log "public.js"

if $("#ng-public-container").length > 0
	$(".carousel").carousel interval: 2000

if $("#ng-missions-container").length > 0
	$(document).ready ->
		$("#fullpage").fullpage
			verticalCentered: true
			resize: true
			scrollingSpeed: 500
			easing: "easeInQuart"
			menu: true
			navigation: true
			navigationPosition: "right"
			navigationTooltips: [
				"救災任務"
				"救難任務"
				"觀測偵巡任務"
				"運輸任務"
				"救護任務"
			]
			slidesNavigation: true
			slidesNavPosition: "bottom"
			loopBottom: true
			loopTop: true
			keyboardScrolling: true
			touchSensitivity: 5
			continuousVertical: false
			animateAnchor: true
			afterRender: ->
  			$("#fullpage").fadeIn()
  			return
		return
else
	$('html').css('overflow-y','auto')

if $("#ng-photos-container").length > 0
	$("#photos-container").imagesLoaded ->
  	$("#photos-container").masonry
  		itemSelector: ".item"
  	return

