(() =>{
    // try to get the object and do stuff with it
    const seeMoreButtons = document.querySelectorAll('.see-more'),
        popOver = document.querySelector('.popover');

    // const waypoint = new Waypoint({
    //     // what element is this waypoint looking at?
    //     // the handle will fire when it scrolls into view
    //     element: document.getElementById('section2'),
    //     // what should we do when we hit the waypoint? this is up to you.
    //     // you can triggle animation , do an AJAX call.. whatever
    //     handler: function(direction) {
    //       console.log('Scrolled to waypoint!');
    //       this.element.innerHTML += `
    //       <p>Added this with Waypoint! We are scrolling ${direction}</p>`;
    //     }
    //   })

    //   const waypoint2 = new Waypoint({
    //     // what element is this waypoint looking at?
    //     // the handle will fire when it scrolls into view
    //     element: document.getElementById('section3'),
    //     // what should we do when we hit the waypoint? this is up to you.
    //     // you can triggle animation , do an AJAX call.. whatever
    //     handler: function(direction) {
    //       console.log('Scrolled to waypoint 2!');
    //     },

    //     offset: 200
    //   })

    function  buildPopover(ramendata, el) {
        popOver.querySelector(".sort").textContent = `Sort: ${ramendata.sort}`;
        popOver.querySelector(".ratings").textContent = `Rating: ${ramendata.rate}`;
        popOver.querySelector(".ramen-prize").textContent = `Prize: ${ramendata.prize}`;

        // show the popover
        popOver.classList.add('show-popover');
        el.appendChild(popOver);
    }
    //   run the fetch API and get the DB data

    function fetchData() {
        let targetEl = this,
            url =  `/svgdata/${this.dataset.target}`;
            
        fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);

            // populate the popover
            buildPopover(data, targetEl);
        })
        .catch((err) => console.log(err));
    }

    const svgGraphic = document.querySelector(".svg-wrapper");

    // svgGraphic.addEventListener("click", () => {
    //     console.log(this);
    // })


    seeMoreButtons.forEach(button => button.addEventListener("click", fetchData));


})();