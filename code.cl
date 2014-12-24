; Fonction de génération de base de faits : cette fonction sert
; à créer la base de faits au début du programme, en initialisant
; les systèmes d'exploitation voulus.

(defun genererBF ()
;; GENERERBF REND UNE LISTE QUI CONTIENT LA LISTE DES SYSTEMES ADMIS
  (let (liste)
    (print "Un Android vous convient-il ? (oui/*)")
    (if (eq (read) 'oui) (push 'android liste))
    (print "Un iOS vous convient-il ? (oui/*)")
    (if (eq (read) 'oui) (push 'ios liste))
    (print "Un Windows Phone vous convient-il ? (oui/*)")
    (if (eq (read) 'oui) (push 'wphone liste))
    liste
    )
  )

(defun sysExpert ()
;; SYSEXPERT PREND EN PARAMET
  (let ((BF (genererBF)) dejaAffiche)
    (loop for i in BR do (verifierRegle i BF listeSmartphone))
    (loop for i in listeSmartphone do (if (and (member (?nom i) BF) (not (member (?nom i) dejaAffiche))) (progn (afficherMobile i) (push (?nom i) dejaAffiche))))
  )
)

(defclass $mobile ()
(($nom :accessor ?nom :initarg :nom)
($prix :accessor ?prix :initarg :prix :type int)
($taille :accessor ?taille :initarg :taille :type float)
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
(setq mob9 (make-instance '$mobile :nom "iPhone 6" :prix 700 :taille 4.7 :stockage 16 :systeme 'ios :annee 2014))
(setq mob10 (make-instance '$mobile :nom "iPhone 6 Plus" :prix 800 :taille 5.5 :stockage 16 :systeme 'ios :annee 2014))
(setq mob11 (make-instance '$mobile :nom "Nokia Lumia 930" :prix 550 :taille 5 :stockage 32 :systeme 'wphone :annee 2014))
(setq mob12 (make-instance '$mobile :nom "Nokia Lumia 925" :prix 600 :taille 4.5 :stockage 16 :systeme 'wphone :annee 2013))
(setq mob13 (make-instance '$mobile :nom "Google Nexus 5" :prix 350 :taille 5 :stockage 16 :systeme 'android :annee 2013))
(setq mob14 (make-instance '$mobile :nom "Motorola Moto X" :prix 430 :taille 4.7 :stockage 16 :systeme 'android :annee 2014))
(setq mob15 (make-instance '$mobile :nom "HTC One M8" :prix 680 :taille 5 :stockage 16 :systeme 'android :annee 2014))

(setq listeSmartphone (list mob1 mob2 mob3 mob4 mob5 mob6 mob7 mob8 mob9 mob10 mob11 mob12 mob13 mob14 mob15))

(defclass $regle ()
(($conditions :accessor ?cond :initarg :cond :type list)
($resultats :accessor ?res :initarg :res :type list))
)

; 3 TYPES DE REGLES :
; - REGLE BOOLEENNE : SI TELLE VALEUR SE TROUVE DANS LA BASE DE FAITS, ALORS OK
; Les seuls faits booléens sont des faits qui sont présents ou pas présents dans la BF
; leur présence ou non présence forme une condition
; - REGLE NUMERIQUE : ON DEFINIT DES BORNES 

(defun recupererValNum (intit BF)
(let (min max)
(format t "Indiquez la valeur minimale de ~a." intit)
(setq min (read))
(format t "Indiquez la valeur maximale de ~a." intit)
(setq max (read))
(loop while (> min max) do (format t "Indiquez une valeur supérieure à ~a." min)
(setq max (read)))
(push (list intit min max) BF)))

(defun conditionVerifiee (i BF)
	(let (resultat)
	(if (listp i)
		(progn
			(loop for j in BF while (null resultat) do 
				(if
					(and (listp j) (equal (car j) (car i)) (<= (cadr i) (caddr j)) (<= (cadr j) (cadr i)))
					(setq resultat T)
					(if (and (listp j) (equal (car j) (car i)))
						(setq resultat 'faux))
				)
			)
			(if (eq resultat T) T (if (eq resultat 'faux) nil (recupererValNum (car i) BF)))
		)
		(if (member i BF) T nil)
	)
	)
)

; exemple de condition booléenne : A, B, ...
; exemple de condition numérique : (A 4), (B 300) ...

; exemple de fait booléen : A, C, ...
; exemple de fait numérique : (A 4 9), (D 300 500) ...

(setq 

; A DEFINIR :
; - afficherMobile (sysExpert)
; - listeSmartphone
; - verifierRegle