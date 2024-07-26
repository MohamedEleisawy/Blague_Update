<?php

require ('asset/config/ini.inc.php');

function aleatoire($max)
{
    return mt_rand(0, $max - 1);
}

$questionBdd = "";
$reponseBdd = "";
$content = "";
$reactionMessage = "";
$reactionPercentages = "";
$currentJoke = "";

if (isset($_POST['gen']) && $_POST['gen'] == "générer") {
    $pdoStatement = $pdo->prepare("SELECT `id`, `question`, `reponse`, `like_count`, `drole_count`, `aime_count`, `oula_count`, `dislike_count`, `trop_nul_count` FROM `joke`");
    $pdoStatement->execute();

    $nbBlague = $pdoStatement->rowCount();
    if ($nbBlague == 0) {
        $content = "<p class='messageError'>aucune blague pour le moment.</p>";
    } else {
        $tableau = $pdoStatement->fetchAll(PDO::FETCH_ASSOC);
        $positionBlague = aleatoire($nbBlague);
        $currentJoke = $tableau[$positionBlague];
        $questionBdd = "<p class='question'>" . $currentJoke["question"] . "</p>";
        $reponseBdd = "<p class='reponse'>" . $currentJoke["reponse"] . "</p>";
    }
}

if (isset($_POST['reaction'])) {
    $jokeId = $_POST['joke_id'];
    $reactionType = $_POST['reaction'];
    $reactionColumn = $reactionType . "_count";

    $pdoStatement = $pdo->prepare("UPDATE `joke` SET `$reactionColumn` = `$reactionColumn` + 1 WHERE `id` = :id");
    $updateSuccess = $pdoStatement->execute(['id' => $jokeId]);

    if ($updateSuccess) {
        $reactionMessage = "<p class='reactionMessage'>Merci pour votre réaction!</p>";

        $pdoStatement = $pdo->prepare("SELECT `like_count`, `drole_count`, `aime_count`, `oula_count`, `dislike_count`, `trop_nul_count` FROM `joke` WHERE `id` = :id");
        $pdoStatement->execute(['id' => $jokeId]);
        $reactions = $pdoStatement->fetch(PDO::FETCH_ASSOC);

        if ($reactions) {
            $totalReactions = array_sum($reactions);
            if ($totalReactions > 0) {
                foreach ($reactions as $type => $count) {
                    $percentage = ($count / $totalReactions) * 100;
                    $reactionPercentages .= "<p>" . ucfirst(str_replace('_count', '', $type)) . ": " . round($percentage, 2) . "%</p>";
                }
            }
        } else {
            $reactionMessage = "<p class='reactionMessage'>Tu dois générer une blague ! </p>";
        }
    } else {
        $reactionMessage = "<p class='reactionMessage'>Tu ne peux pas régire 2 fois.</p>";
    }
}

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="asset/css/style.css">
    <title>Blague</title>
</head>
<body>
    <header>
        <h1>Bienvenue dans la blague de momo</h1>
    </header>
    <main>
        <section>
            <?php
            echo $content;
            echo $questionBdd;
            echo $reponseBdd;
            echo $reactionMessage;
            ?>
            <form method="post">
                <input type="submit" name="gen" value="générer" id="gen">
            </form>
            <div id="lesBoutons">
                <form method="post">
                    <input type="hidden" name="joke_id" value="<?php echo $currentJoke['id'] ?? ''; ?>">
                    <div>
                        <button type="submit" name="reaction" value="like" id="boutonDrole1">&#x1F44D;</button>
                        <button type="submit" name="reaction" value="drole" id="boutonDrole2">&#x1F606;</button>
                        <button type="submit" name="reaction" value="aime" id="boutonDrole3">&#x1F923;</button>
                    </div>
                    <div>
                        <button type="submit" name="reaction" value="oula" id="boutonFlop1">&#x1F636;</button>
                        <button type="submit" name="reaction" value="dislike" id="boutonFlop2">&#x1F44E;</button>
                        <button type="submit" name="reaction" value="trop_nul" id="boutonFlop3">&#x1F480;</button>
                    </div>
                </form>
            </div>
            <a href="ajouter.php">Ajouter une blague</a>
        </section>
    </main>
    <div id="reactionPercentages">
        <?php echo $reactionPercentages; ?>
    </div>
 
    <script src="./asset/js/app.js"></script>
</body>
</html>
