; Fonction de génération de base de faits : cette fonction sert
; à créer la base de faits au début du programme, en initialisant
; les systèmes d'exploitation voulus.

(defun genererBF ()
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

(defun sysExpert (BR listeSmartphone)
  (let ((BF (genererBF)))
    (loop for i in BR do (verifierRegle i BF listeSmartphone))
    (loop for i in listeSmartphone do (if (member i BF) (afficherMobile i)))
  )
)