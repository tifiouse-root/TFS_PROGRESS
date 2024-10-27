-- ████████╗██╗███████╗██╗ ██████╗ ██╗   ██╗███████╗███████╗
-- ╚══██╔══╝██║██╔════╝██║██╔═══██╗██║   ██║██╔════╝██╔════╝
--    ██║   ██║█████╗  ██║██║   ██║██║   ██║███████╗█████╗  
--    ██║   ██║██╔══╝  ██║██║   ██║██║   ██║╚════██║██╔══╝  
--    ██║   ██║██║     ██║╚██████╔╝╚██████╔╝███████║███████╗
--    ╚═╝   ╚═╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

Config = {}

Config.From             = 0     -- Pourcentage de progression de départ
Config.To               = 100   -- Pourcentage de progression de fin

Config.Async            = true  -- Si la barre de progression fonctionne de manière asynchrone

Config.Duration         = 5000
Config.Label            = "Chargement..."
Config.LabelPosition    = "bottom"

Config.Color            = "rgba(255, 255, 255, 1.0)"    -- Couleur de la barre de progression
Config.BGColor          = "rgba(0, 0, 0, 0.4)"          -- Couleur du fond de la barre

Config.x                = 0.5 -- Position horizontale
Config.y                = 0.5 -- Position verticale

Config.Rotation         = 0         -- Angle de rotation du cadran
Config.MaxAngle         = 360       -- Arc maximal en degrés - 360 pour un cercle complet, 90 pour un quart de cercle, etc.
Config.Radius           = 60        -- Rayon du cadran radial
Config.Stroke           = 10        -- Épaisseur du trait du cadran radial
Config.Width            = 300       -- Largeur de la barre linéaire
Config.Height           = 40        -- Hauteur de la barre linéaire
Config.Cap              = 'butt'    -- ou 'round'
Config.Padding          = 0         -- Marge de la barre de fond
Config.CancelKey        = 178       -- Touche pour annuler la progression

Config.ShowTimer        = true      -- Affiche le compte à rebours sur le cadran
Config.ShowProgress     = false     -- Affiche la progression sur le cadran

Config.Easing           = "easeLinear" -- Assouplissement pour l'animation du cadran - voir TFS_progress/ui/js/easings.js

Config.DisableControls = {
    Mouse           = false,    -- Désactive les contrôles de la souris jusqu'à la fin de la progression
    Player          = false,    -- Désactive les mouvements du joueur jusqu'à la fin de la progression
    Vehicle         = false     -- Désactive les contrôles du véhicule jusqu'à la fin de la progression
}

Config.onStart      = function()end
Config.onComplete   = function()end

Config.MiniGameOptions = {
    MaxAngle = 240,
    Rotation = -120,
    Radius = 100,
    Stroke = 30,    
    Difficulty = {
        Custom = {
            Zone = 40,         -- Pourcentage du cadran qui est la zone de déclenchement (plus bas = plus difficile)
            Duration = 1000    -- Temps en millisecondes pour que le cadran se remplisse dans une direction (plus bas = plus difficile)
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

-- ████████╗██╗███████╗██╗ ██████╗ ██╗   ██╗███████╗███████╗
-- ╚══██╔══╝██║██╔════╝██║██╔═══██╗██║   ██║██╔════╝██╔════╝
--    ██║   ██║█████╗  ██║██║   ██║██║   ██║███████╗█████╗  
--    ██║   ██║██╔══╝  ██║██║   ██║██║   ██║╚════██║██╔══╝  
--    ██║   ██║██║     ██║╚██████╔╝╚██████╔╝███████║███████╗
--    ╚═╝   ╚═╝╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
