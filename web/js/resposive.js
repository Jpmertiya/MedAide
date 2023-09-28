let menu = document.querySelector('#menu-icon');
let navlist = document.querySelector('.navlist');
let subm = document.querySelector('#one');
 document.querySelector('#menu-icon').onclick=() => {
    menu.classList.toggle('bx-x');
    navlist.classList.toggle('active');
};

window.onscroll = () => {
    menu.classList.remove('bx-x');
    navlist.classList.remove('active');
};


//to make navbar sticky and responsive
const header = document.querySelector("header");
window.addEventListener("scroll", function () {
    header.classList.toggle("sticky", window.scrollY > 0);
});


const sr = ScrollReveal({
    distance: '45px',
    duration: 2700,
    reset: true
});
sr.reveal('.home-text', {delay: 100, origin: 'left'});
sr.reveal('.home-img', {delay: 100, origin: 'right'});
sr.reveal('.sub-service,.about,.portfolio,.service,.cta,.contact', {delay: 150, origin: 'bottom'});



//signup jsp
$('.form').find('input, textarea').on('keyup blur focus', function (e) {

    var $this = $(this),
            label = $this.prev('label');

    if (e.type === 'keyup') {
        if ($this.val() === '') {
            label.removeClass('active highlight');
        } else {
            label.addClass('active highlight');
        }
    } else if (e.type === 'blur') {
        if ($this.val() === '') {
            label.removeClass('active highlight');
        } else {
            label.removeClass('highlight');
        }
    } else if (e.type === 'focus') {

        if ($this.val() === '') {
            label.removeClass('highlight');
        } else if ($this.val() !== '') {
            label.addClass('highlight');
        }
    }

});

$('.tab a').on('click', function (e) {

    e.preventDefault();

    $(this).parent().addClass('active');
    $(this).parent().siblings().removeClass('active');

    target = $(this).attr('href');

    $('.tab-content > div').not(target).hide();

    $(target).fadeIn(600);

});
//end of sign up jsp