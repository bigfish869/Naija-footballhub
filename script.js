const search = document.getElementById("search");

search.addEventListener("keyup", () => {

    const value = search.value.toLowerCase();

    document.querySelectorAll(".card").forEach(card => {

        const player =
            card.querySelector("h3")
            .textContent
            .toLowerCase();

        if(player.includes(value)){
            card.style.display = "block";
        }else{
            card.style.display = "none";
        }

    });

});