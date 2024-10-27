
# TFS Progress Bar - Script de Progress-Barre pour FIVEM

<p align="center">
  <img src="https://cdn.discordapp.com/attachments/1291112806451511369/1300131722381361152/FiveM_GTA_V_Logo.png?ex=671fb985&is=671e6805&hm=1ad9f041a278429449b639691945a5986bc0c61f6198aec86f1111ff5fd93734&" alt="Logo" width="300" height="100"/>
</p>

## 📜 Description

TFS Progress Bar est un script pour FiveM qui permet d'afficher une barre de progression personnalisable dans le jeu. Il peut être utilisé pour diverses actions nécessitant un délai, comme le chargement ou les mini-jeux.

## ⚙️ Configuration

La configuration du script se trouve dans le fichier `config.lua`. Voici les options disponibles :

```lua
Config = {}

Config.From             = 0      -- Pourcentage de progression de départ
Config.To               = 100    -- Pourcentage de progression de fin
Config.Async            = true   -- Barre de progression asynchrone
Config.Duration         = 5000   -- Durée de la progression en millisecondes
Config.Label            = "Chargement..." -- Texte à afficher sur la barre
Config.LabelPosition    = "bottom" -- Position du texte

Config.Color            = "rgba(255, 255, 255, 1.0)" -- Couleur de la barre
Config.BGColor          = "rgba(0, 0, 0, 0.4)"       -- Couleur de fond

Config.x                = 0.5   -- Position horizontale
Config.y                = 0.5   -- Position verticale

Config.Rotation         = 0     -- Angle de rotation du cadran
Config.MaxAngle         = 360   -- Arc maximal en degrés
Config.Radius           = 60    -- Rayon du cadran radial
Config.Stroke           = 10    -- Épaisseur du trait du cadran radial
Config.Width            = 300   -- Largeur de la barre linéaire
Config.Height           = 40    -- Hauteur de la barre linéaire
Config.Cap              = 'butt' -- Style de la barre (butt ou round)
Config.Padding          = 0     -- Marge de la barre de fond
Config.CancelKey        = 178   -- Touche pour annuler la progression

Config.ShowTimer        = true  -- Affiche le compte à rebours
Config.ShowProgress     = false -- Affiche la progression

Config.Easing           = "easeLinear" -- Assouplissement pour l'animation

Config.DisableControls = {
    Mouse           = false, -- Désactive les contrôles de la souris
    Player          = false, -- Désactive les mouvements du joueur
    Vehicle         = false  -- Désactive les contrôles du véhicule
}

Config.onStart      = function() end
Config.onComplete   = function() end

Config.MiniGameOptions = {
    MaxAngle = 240,
    Rotation = -120,
    Radius = 100,
    Stroke = 30,
    Difficulty = {
        Custom = {
            Zone = 40,
            Duration = 1000
        },
        Easy = {
            Zone = 30,
            Duration = 500
        },
        Medium = {
            Zone = 20,
            Duration = 500
        },
        Hard = {
            Zone = 10,
            Duration = 500
        }
    }
}
```

## 💻 Installation

1. Téléchargez le script depuis le [lien de téléchargement](https://github.com/tifiouse-root/TFS_PROGRESS/archive/refs/heads/main.zip).
2. Décompressez le fichier et placez le dossier `tfs_progress` dans votre dossier `resources` de votre serveur FiveM.
3. Ajoutez `ensure tfs_progress` à votre fichier `server.cfg`.

## 📜 Utilisation

Vous pouvez appeler la barre de progression à partir de votre code client ou serveur selon vos besoins. Assurez-vous de personnaliser les options dans `config.lua` avant de commencer.

## 📜 Exemple d'utilisation

Voici un exemple de comment utiliser la barre de progression personnalisée dans votre script :

```lua
exports.TFS_progress:Custom({
    Duration = 2500,
    Label = "Vous changez de vêtements...",
    Animation = {
        scenario = "WORLD_HUMAN_COP_IDLES",
        animationDictionary = "idle_a",
    },
    DisableControls = {
        Mouse = false,
        Player = true,
        Vehicle = true
    }
})
```

## License

Ce projet est sous licence [MIT](#).
```

N'hésite pas à demander si tu veux des ajustements ou d'autres informations !