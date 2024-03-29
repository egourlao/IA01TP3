(setq BF nil)

(defclass $mobile ()
(($nom :accessor ?nom :initarg :nom)
($prix :accessor ?prix :initarg :prix :type int)
($taille :accessor ?taille :initarg :taille :type float)
($version :accessor ?version :initarg :version :type int)
($stockage :accessor ?stockage :initarg :stockage :type int)
($system :accessor ?systeme :initarg :systeme)
($annee :accessor ?annee :initarg :annee :type int)
))

(setq mob1 (make-instance '$mobile :nom "LG G3" :prix 600 :taille 5.5 :stockage 16 :systeme 'android :annee 2014))
(setq mob2 (make-instance '$mobile :nom "LG G3" :prix 700 :taille 5.5 :stockage 32 :systeme 'android :annee 2014))
(setq mob3 (make-instance '$mobile :nom "Samsung Galaxy Note 4" :prix 750 :taille 5.7 :stockage 32 :systeme 'android :annee 2014))
(setq mob4 (make-instance '$mobile :nom "LG G2" :prix 300 :taille 5.2 :stockage 16 :systeme 'android :annee 2013))
(setq mob5 (make-instance '$mobile :nom "ZTE Grand S Flex" :prix 618 :taille 5 :stockage 16 :systeme 'android :annee 2014))
(setq mob6 (make-instance '$mobile :nom "OnePlus One" :prix 300 :taille 5.5 :stockage 64 :systeme 'android :annee 2014))
(setq mob7 (make-instance '$mobile :nom "HTC One Mini 2" :prix 450 :taille 4.5 :stockage 16 :systeme 'android :annee 2014))
(setq mob8 (make-instance '$mobile :nom "Xiaomi MI4" :prix 400 :taille 5 :stockage 64 :systeme 'android :annee 2014))
(setq mob9 (make-instance '$mobile :nom "iPhone 6" :prix 700 :taille 4.7 :stockage 16 :systeme 'ios :annee 2014 :version 8))
(setq mob10 (make-instance '$mobile :nom "iPhone 6 Plus" :prix 800 :taille 5.5 :version 8 :stockage 16 :systeme 'ios :annee 2014))
(setq mob11 (make-instance '$mobile :nom "Nokia Lumia 930" :prix 550 :taille 5 :stockage 32 :systeme 'wphone :annee 2014))
(setq mob12 (make-instance '$mobile :nom "Nokia Lumia 925" :prix 600 :taille 4.5 :stockage 16 :systeme 'wphone :annee 2013))
(setq mob13 (make-instance '$mobile :nom "Google Nexus 5" :prix 350 :taille 5 :stockage 16 :systeme 'android :annee 2013))
(setq mob14 (make-instance '$mobile :nom "Motorola Moto X" :prix 430 :taille 4.7 :stockage 16 :systeme 'android :annee 2014))
(setq mob15 (make-instance '$mobile :nom "HTC One M8" :prix 680 :taille 5 :stockage 16 :systeme 'android :annee 2014))
(setq mob16 (make-instance '$mobile :nom "iPhone 4" :prix 700 :taille 3.5 :stockage 16 :systeme 'ios :version 7 :annee 2010))
(setq mob17 (make-instance '$mobile :nom "iPhone 6 Plus" :prix 900 :taille 5.5 :version 8 :stockage 64 :systeme 'ios :annee 2014))
(setq mob18 (make-instance '$mobile :nom "iPhone 4S" :prix 700 :taille 3.5 :stockage 16 :systeme 'ios :version 8 :annee 2011))

(setq listeSmartphone (list mob1 mob2 mob3 mob4 mob5 mob6 mob7 mob8 mob9 mob10 mob11 mob12 mob13 mob14 mob15 mob16 mob17 mob18))

(defclass $regle ()
(($conditions :accessor ?cond :initarg :cond :type list)
($resultat :accessor ?res :initarg :res :type $mobile))
)

; on passe aux règles communes

(setq regle5 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob1)) (list 'num 'stockage (?stockage mob1)) (list 'num 'prix (?prix mob1)) (list 'num 'taille (?taille mob1))) :res mob1))
(setq regle6 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob2)) (list 'num 'stockage (?stockage mob2)) (list 'num 'prix (?prix mob2)) (list 'num 'taille (?taille mob2))) :res mob2))
(setq regle7 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob3)) (list 'num 'stockage (?stockage mob3)) (list 'num 'prix (?prix mob3)) (list 'num 'taille (?taille mob3))) :res mob3))
(setq regle8 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob4)) (list 'num 'stockage (?stockage mob4)) (list 'num 'prix (?prix mob4)) (list 'num 'taille (?taille mob4))) :res mob4))
(setq regle9 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'bool 'hres 'non) (list 'num 'annee (?annee mob5)) (list 'num 'stockage (?stockage mob5)) (list 'num 'prix (?prix mob5)) (list 'num 'taille (?taille mob5))) :res mob5))
(setq regle10 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob6)) (list 'num 'stockage (?stockage mob6)) (list 'num 'prix (?prix mob6)) (list 'num 'taille (?taille mob6))) :res mob6))
(setq regle11 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'bool 'hres 'non) (list 'num 'annee (?annee mob7)) (list 'num 'stockage (?stockage mob7)) (list 'num 'prix (?prix mob7)) (list 'num 'taille (?taille mob7))) :res mob7))
(setq regle12 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob8)) (list 'num 'stockage (?stockage mob8)) (list 'num 'prix (?prix mob8)) (list 'num 'taille (?taille mob8))) :res mob8))
(setq regle13 (make-instance '$regle :cond (list (list 'bool 'ios 'present) (list 'num 'annee (?annee mob9)) (list 'num 'version (?version mob9)) (list 'num 'stockage (?stockage mob9)) (list 'num 'prix (?prix mob9)) (list 'num 'taille (?taille mob9))) :res mob9))
(setq regle14 (make-instance '$regle :cond (list (list 'bool 'ios 'present) (list 'num 'annee (?annee mob10)) (list 'num 'version (?version mob10)) (list 'num 'stockage (?stockage mob10)) (list 'num 'prix (?prix mob10)) (list 'num 'taille (?taille mob10))) :res mob10))
(setq regle15 (make-instance '$regle :cond (list (list 'bool 'wphone 'present) (list 'num 'annee (?annee mob11)) (list 'num 'stockage (?stockage mob11)) (list 'num 'prix (?prix mob11)) (list 'num 'taille (?taille mob11))) :res mob11))
(setq regle16 (make-instance '$regle :cond (list (list 'bool 'wphone 'present) (list 'num 'annee (?annee mob12)) (list 'num 'stockage (?stockage mob12)) (list 'num 'prix (?prix mob12)) (list 'num 'taille (?taille mob12))) :res mob12))
(setq regle17 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob13)) (list 'num 'stockage (?stockage mob13)) (list 'num 'prix (?prix mob13)) (list 'num 'taille (?taille mob13))) :res mob13))
(setq regle18 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob14)) (list 'num 'stockage (?stockage mob14)) (list 'num 'prix (?prix mob14)) (list 'num 'taille (?taille mob14))) :res mob14))
(setq regle19 (make-instance '$regle :cond (list (list 'bool 'android 'present) (list 'num 'annee (?annee mob15)) (list 'num 'stockage (?stockage mob15)) (list 'num 'prix (?prix mob15)) (list 'num 'taille (?taille mob15))) :res mob15))
(setq regle21 (make-instance '$regle :cond (list (list 'bool 'ios 'present) (list 'num 'annee (?annee mob16)) (list 'num 'stockage (?stockage mob16)) (list 'num 'prix (?prix mob16)) (list 'num 'taille (?taille mob16)) (list 'num 'version (?version mob16))) :res mob16))
(setq regle22 (make-instance '$regle :cond (list (list 'bool 'ios 'present) (list 'num 'annee (?annee mob17)) (list 'num 'stockage (?stockage mob17)) (list 'num 'prix (?prix mob17)) (list 'num 'taille (?taille mob17)) (list 'num 'version (?version mob17))) :res mob17))
(setq regle23 (make-instance '$regle :cond (list (list 'bool 'ios 'present) (list 'num 'annee (?annee mob18)) (list 'num 'stockage (?stockage mob18)) (list 'num 'prix (?prix mob18)) (list 'num 'taille (?taille mob18)) (list 'num 'version (?version mob18))) :res mob18))

(setq BR (list regle5 regle6 regle7 regle8 regle9 regle10 regle11 regle12 regle13 regle14 regle15 regle16 regle17 regle18 regle19 regle21 regle22 regle23))

; ON A RAJOUTE LES REGLES ET LA BASE DE DONNEES DE SMARTPHONES

; ON PASSE AUX FONCTIONS

(defun sysExpert ()
(genererBF)
(loop for i in BR do (verifierRegle i))
(afficherTels)
)

; GENERERBF réinitialise BF puis lui attribue ses valeurs booléennes de système
; FONCTIONNE

(defun genererBF ()
(setq BF nil) ; on définit BF comme une variable lexicale, qu'on réinitialise chaque fois qu'on lance le programme
    (print "Un iOS vous convient-il ? (oui/*)")
    (if (eq (read) 'oui) (setq BF (cons 'ios BF)))
	(print "Un Android vous convient-il ? (oui/*)")
    (if (eq (read) 'oui) (progn (setq BF (cons 'android BF))
    (print "Dans le cas d'un Android, souhaitez-vous spécifiquement un écran haute résolution ? (supérieure à 350ppp) (oui/*)")
    (if (eq (read) 'oui) (setq BF (cons 'hres BF)))))
    (print "Un Windows Phone vous convient-il ? (oui/*)")
    (if (eq (read) 'oui) (setq BF (cons 'wphone BF)))
)

; VERIFIERREGLE EST UNE FONCTION QUI PREND EN PARAMETRE UNE REGLE
; ELLE NE REND RIEN MAIS SI LA REGLE EST VERIFIEE GRÂCE A CONDVERIF, ELLE APPELLE LA FONCTION APPLIQUER

(defun verifierRegle (regle)
	(if (not (siPresent (?res regle)))
		(let ((verif "oui") (listeConditions (?cond regle)))
			(loop for condition in listeConditions while (equal verif "oui") do
			(if (null (condVerif condition)) (setq verif "non")))
			(if (equal verif "oui") (appliquer (?res regle)))
		)
	)
)

; SIPRESENT prend en paramètre un mobile, et vérifie si son nom est présent dans BF.
; FONCTIONNE

(defun siPresent (mobile)
(let (present (nom (?nom mobile)))
(loop for i in BF while (null present) do
(if (equal i nom) (setq present T)))
present))

; AFFICHERTELS affiche les téléphones à la fin.
; FONCTIONNE

(defun afficherTels ()
	(let (affiche tel)
		(loop for i in BF do
			(setq tel nil)
			(loop for j in listeSmartphone while (null tel) do
				(if (equal (?nom j) i) (progn
					(progn (format t "Voici un téléphone qui correspond à vos attentes : ~%~a.~%" (?nom j)))
					(setq affiche t)
					(setq tel t)
				))
			)
		)
		(if (null affiche) (format t "Aucun téléphone de la base de données ne correspond à vos critères.~%"))
	)
)

; APPLIQUER applique la règle ; dans le cas présent, elle rajoute le nom du mobile à BF, pour indiquer qu'il correspond aux critères.
; FONCTIONNE

(defun appliquer (mobile)
(if (member (?nom mobile) BF) nil (setq BF (cons (?nom mobile) BF))))

; condVerif prend en paramètre une des conditions, et vérifie si elle s'applique.
; elle rend t si la condition s'applique bien, et nil si elle ne s'applique pas.
; FONCTIONNE

(defun condVerif (condition)
(cond ((and (equal (car condition) 'bool) (equal (caddr condition) 'present)) (if (member (cadr condition) BF) T nil))
		((and (equal (car condition) 'bool) (equal (caddr condition) 'non)) (if (member (cadr condition) BF) nil T))
		((or (and (equal (car condition) 'num) (equal (cadr condition) 'annee)) (and (equal (car condition) 'num) (equal (cadr condition) 'version))) (condVerifNumEgal condition))
		((and (equal (car condition) 'num) (not (equal (cadr condition) 'annee)) (not (equal (cadr condition) 'version))) (condVerifNum condition))
		(T nil)
))

; condVerifNum vérifie une condition numérique si c'est dans le cas d'un intervalle
; elle rend T ou nil
; FONCTIONNE

(defun condVerifNum (condition)
(let (trouve val)
(loop for fait in BF while (null trouve) do
(if (and (listp fait) (equal (car fait) (cadr condition))) (progn
	(setq trouve T)
	(if (and (>= (caddr condition) (cadr fait)) (<= (caddr condition) (caddr fait))) (setq val T)))))
(if (not trouve) (progn
(demanderUser (cadr condition))
(setq val (condVerifNum condition))))
val))

; condVerifNumEgal vérifie une condition numérique si c'est dans le cas d'une comparaison exacte
; elle rend T ou nil
; FONCTIONNE

(defun condVerifNumEgal (condition)
(let (trouve val)
(loop for fait in BF while (null trouve) do
(if (and (listp fait) (equal (car fait) (cadr condition))) (progn
	(setq trouve T)
	(if (equal (caddr condition) (cadr fait)) (setq val T)))))
(if (not trouve) (progn
(demanderUserEgal (cadr condition))
(setq val (condVerifNumEgal condition))))
val))

; demanderUser demande à l'utilisateur de rentrer un intervalle numérique
; elle rajoute une liste de 3 éléments à BF
; FONCTIONNE

(defun demanderUser (intit)
(let (min max)
(format t "Indiquez la valeur minimale de ~a " intit)
(cond ((equal intit 'stockage) (format t "en Go. > "))
		((equal intit 'prix) (format t "en euros. > "))
		((equal intit 'taille) (format t "en pouces. > ")))
(setq min (read))
(format t "Indiquez la valeur maximale de ~a " intit)
(cond ((equal intit 'stockage) (format t "en Go. > "))
		((equal intit 'prix) (format t "en euros. > "))
		((equal intit 'taille) (format t "en pouces. > ")))
(setq max (read))
(loop while (> min max) do (format t "Indiquez une valeur supérieure à ~a. > " min)
(setq max (read)))
(setq BF (cons (list intit min max) BF))))

; demanderUserEgal demande à l'utilisateur une valeur numérique
; elle rajoute une liste de 2 éléments à BF
; FONCTIONNE

(defun demanderUserEgal (intit)
(let (val)
(cond
((equal intit 'annee) (format t "Indiquez l'année de sortie voulue. > "))
((equal intit 'version) (format t "Indiquez la version d'iOS voulue pour un appareil iOS. > ")))
(setq val (read))
(setq BF (cons (list intit val) BF))))