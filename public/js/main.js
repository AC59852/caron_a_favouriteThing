

const myVM = (() => {

    let userButtons = document.querySelectorAll('.u-link'),
        lightBox = document.querySelector('.lightbox'),
        container = document.querySelector('.team'),
        heading = document.querySelector('.heading');


    // parsing the data and displaying it on the page within HTML
    function parseUserData(object) {
        let introPara1 = lightBox.querySelector('.lb-para1'),
        introPara2 = lightBox.querySelector('.lb-para2'),
        introPara3 = lightBox.querySelector('.lb-para3');

        // each bioContent is a paragraph and image pulled from the mySQL table

        let bioContent1 = `
        <img class="lb-image lb-image1" src="${object.Content1}">
            <p class="lb-text">${object.Para1}</p>
        `,
        bioContent2 = `
        <img class="lb-image lb-image2" src="${object.Content2}">
            <p class="lb-text lb-text2">${object.Para2}</p>
        `,

        bioContent3 = `
        <img class="lb-image lb-image3" src="${object.Content3}">
            <p class="lb-text lb-text3">${object.Para3}</p>
        `;

        // adding the content into the HTML

        introPara1.innerHTML = bioContent1;
        introPara2.innerHTML = bioContent2;
        introPara3.innerHTML = bioContent3;

        // displays the lightbox and hides the fav things page

        lightBox.classList.add('show-lb');
        container.classList.add('hidden');
        heading.classList.add('hidden');

    }

    // preventing the page from switching to a new link, instead pushing it all to the lightbox

    function getUserData(event) {
        event.preventDefault();
        let url = `/${this.getAttribute('href')}`;

        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                parseUserData(data);
            })
            .catch((err) => {
                console.log(err);
            });
    }

    userButtons.forEach(button => button.addEventListener("click", getUserData));

    // displays the fav things page and hides the lightbox

    lightBox.querySelector('.close').addEventListener("click", function() {
        lightBox.classList.remove('show-lb');
        heading.classList.remove('hidden');
        container.classList.remove('hidden');
    });
})();