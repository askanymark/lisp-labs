(defun house nil (load "house.lisp"))

;; house
(setf *house 
      '((type terrace)
        (structure ((roof (ceramic brown))
                    (walls (brick dark-red))))
        (rooms ((kitchen ((dimensions (20 12))
                          (appliances (cooker fridge dishwasher oven freezer dining-table))))
                (bedroom ((dimensions (15 21))
                          (features ((double-bed washbasin wardrobe mirror)))))))
        (garden (pond lawn shed))
        (points-of-interest ((school (type academy))
                             (hospital (name saint-marys))
                             (market (vendor-count 29))
                             (police-station (type regional))))))

;; list l
(setf l '((a 1) (b 2) (c 3)))

;; get all rooms
(defun get-rooms (association-list)
  (assoc 'rooms association-list))

;; get nearby points of interest
(defun get-points-of-interest (association-list)
  (assoc 'points-of-interest association-list))

;; get the structure of the house
(defun get-structure (association-list)
  (assoc 'structure association-list))

;; get specific room
(defun get-room (property association-list)
  (assoc property (second (get-rooms association-list))))

;; get specific point of interest
(defun get-point-of-interest (property association-list)
  (assoc property (second (get-points-of-interest association-list))))

;; get details about a specific part of the house structure
(defun get-structure-part (property association-list)
  (assoc property (second (get-structure association-list))))

;; get room dimensions
(defun get-room-dimensions (property association-list)
  (assoc 'dimensions (second (get-room property association-list))))

;; get bedroom features
(defun get-bedroom-features (association-list)
  (second (assoc 'features (second (get-room 'bedroom association-list)))))