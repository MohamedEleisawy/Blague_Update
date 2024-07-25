'use strict';
// Fonction pour déclencher un son
function playSound(audioPath) {
    const audio = new Audio(audioPath);
    audio.play();
}

// Ajout des écouteurs d'événements pour chaque bouton
document.getElementById('boutonDrole1').addEventListener('click', () => playSound('./asset/son/clash-royale.mp3'));
document.getElementById('boutonDrole2').addEventListener('click', () => playSound('./asset/son/oh-no.mp3'));
document.getElementById('boutonDrole3').addEventListener('click', () => playSound('./asset/son/rires-humain.mp3'));
document.getElementById('boutonFlop1').addEventListener('click', () => playSound('./asset/son/null.mp3'));
document.getElementById('boutonFlop2').addEventListener('click', () => playSound('./asset/son/le-plus-nul.mp3'));
document.getElementById('boutonFlop3').addEventListener('click', () => playSound('./asset/son/nul-pas-bien.mp3'));
