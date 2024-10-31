let cooldownInterval;

window.addEventListener('message', function(event) {
    switch (event.data.action) {
        case "showCooldown":
            showCooldown(event.data.timeRemaining);
            break;
        case "hideCooldown":
            hideCooldown();
            break;
        case "updatePosition":
            updatePosition(event.data.x, event.data.y);
            break;
        case "showShopPrompt":
            showShopPrompt(event.data.message, event.data.x, event.data.y);
            break;
        case "hideShopPrompt":
            hideShopPrompt();
            break;
    }
});

function showCooldown(timeRemaining) {
    document.getElementById("cooldownContainer").style.display = "block";
    updateTimer(timeRemaining);
    document.getElementById("shopPrompt").style.display = "none"; // Hide shop prompt when cooldown is shown
}

function hideCooldown() {
    document.getElementById("cooldownContainer").style.display = "none";
    clearInterval(cooldownInterval);
}

function updatePosition(x, y) {
    document.getElementById("cooldownContainer").style.transform = `translate(${x}px, ${y}px)`;
}

function showShopPrompt(message, x, y) {
    document.getElementById("shopPrompt").style.display = "block";
    document.getElementById("shopMessage").textContent = message;
    document.getElementById("shopPrompt").style.transform = `translate(${x}px, ${y}px)`;
}

function hideShopPrompt() {
    document.getElementById("shopPrompt").style.display = "none";
}

function updateTimer(timeRemaining) {
    clearInterval(cooldownInterval); // Clear any existing interval to prevent overlapping timers
    cooldownInterval = setInterval(() => {
        if (timeRemaining <= 0) {
            document.getElementById("cooldownTime").textContent = "00:00";
            hideCooldown(); // Hide the cooldown when time runs out
            clearInterval(cooldownInterval);
        } else {
            let minutes = Math.floor(timeRemaining / 60);
            let seconds = timeRemaining % 60;
            document.getElementById("cooldownTime").textContent = 
                `${String(minutes).padStart(2, "0")}:${String(seconds).padStart(2, "0")}`;
            timeRemaining--;
        }
    }, 1000);
}
