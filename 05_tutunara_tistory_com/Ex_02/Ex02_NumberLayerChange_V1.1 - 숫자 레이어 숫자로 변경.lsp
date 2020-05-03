;; Title : 숫자키를 이용한 레이어 바꾸기
;; Shoutcut key : 000, 111, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
;; Description : 숫자키를 이용하여 숫자이름으로 된 레이어 변경
;; Maker : 원작 미상
;;         rev 1. 2009.05.14 레이어 초기화 기능 추가 (000 : 같은 레이어 있으면 같은 레이어는 초기화 하지않음)(by nadau)
;;         rev 2. 2009.05.15 강제 레이어 초기화 추가 (111 : 같은 레이어가 있어도 강제로 레이어 전체 초기화)(by nadau)
;;         rev 3. 2009.05.16 색상만 변경하는 기능 추가 (00 ~ 99) (by nadau)

(defun c:000()

 (setvar "cmdecho" 0)
 (if (= (tblsearch "layer" "0") nil)    ; "layer"가 있는지 없는지 확인 없으면 만든다.
       (command "layer" "m" "0" "c" "7" "" "lt" "continuous" "" ""))
     ;                    | 이름  | 색상      | 선종류
 (if (= (tblsearch "layer" "1") nil) 
     (command "layer" "m" "1" "c" "1" "" "lt" "CENTER" "" ""))
 (if (= (tblsearch "layer" "2") nil) 
     (command "layer" "m" "2" "c" "2" "" "lt" "HIDDEN" "" ""))
 (if (= (tblsearch "layer" "3") nil) 
     (command "layer" "m" "3" "c" "3" "" "lt" "continuous" "" ""))
 (if (= (tblsearch "layer" "4") nil) 
     (command "layer" "m" "4" "c" "4" "" "lt" "PHANTOM" "" ""))
 (if (= (tblsearch "layer" "5") nil) 
     (command "layer" "m" "5" "c" "5" "" "lt" "continuous" "" ""))
 (if (= (tblsearch "layer" "6") nil) 
     (command "layer" "m" "6" "c" "6" "" "lt" "continuous" "" ""))
 (if (= (tblsearch "layer" "7") nil) 
     (command "layer" "m" "7" "c" "15" "" "lt" "PHANTOM" "" ""))
 (if (= (tblsearch "layer" "8") nil) 
     (command "layer" "m" "8" "c" "41" "" "lt" "continuous" "" ""))
 (if (= (tblsearch "layer" "9") nil) 
     (command "layer" "m" "9" "c" "175" "" "lt" "continuous" "" ""))
 (if (= (tblsearch "layer" "123") nil) 
     (command "layer" "m" "123" "c" "190" "" "lt" "continuous" "" ""))
 (if (= (tblsearch "layer" "sDIM") nil) 
     (command "layer" "m" "sDIM" "c" "4" "" "lt" "continuous" "" ""))
(command "layer" "s" "0" "")
(prompt "\n 000() -> 레이어가 초기화 되었습니다.")
(setvar "cmdecho" 1)
(princ)
)

;; 레이어 초기화 (0 ~ 9) 까지 레이어 초기화 (강제 초기화)
(defun c:111()
(setvar "cmdecho" 0)
     (command "layer" "m" "0" "c" "7" "" "lt" "continuous" "" "")
     (command "layer" "m" "1" "c" "1" "" "lt" "CENTER" "" "")
     (command "layer" "m" "2" "c" "2" "" "lt" "HIDDEN" "" "")
     (command "layer" "m" "3" "c" "3" "" "lt" "continuous" "" "")
     (command "layer" "m" "4" "c" "4" "" "lt" "PHANTOM" "" "")
     (command "layer" "m" "5" "c" "5" "" "lt" "continuous" "" "")
     (command "layer" "m" "6" "c" "6" "" "lt" "continuous" "" "")
     (command "layer" "m" "7" "c" "15" "" "lt" "PHANTOM" "" "")
     (command "layer" "m" "8" "c" "41" "" "lt" "continuous" "" "")
     (command "layer" "m" "9" "c" "175" "" "lt" "continuous" "" "")
     (command "layer" "m" "123" "c" "190" "" "lt" "continuous" "" "")
     (command "layer" "m" "sDIM" "c" "4" "" "lt" "continuous" "" "")
(command "layer" "s" "0" "")
(prompt "\n 111() -> 레이어가 초기화 되었습니다.")
(setvar "cmdecho" 1)
(princ)
)

;; 숫자키를 이용한 자동 레이어 변경 (0 ~ 9)
(defun  C:0() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "0" "LT" "BYLAYER" "")(princ))
(defun  C:1() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "1" "LT" "BYLAYER" "")(princ))
(defun  C:2() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "2" "LT" "BYLAYER" "")(princ))
(defun  C:3() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "3" "LT" "BYLAYER" "")(princ))
(defun  C:4() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "4" "LT" "BYLAYER" "")(princ))
(defun  C:5() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "5" "LT" "BYLAYER" "")(princ))
(defun  C:6() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "6" "LT" "BYLAYER" "")(princ))
(defun  C:7() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "7" "LT" "BYLAYER" "")(princ))
(defun  C:8() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "8" "LT" "BYLAYER" "")(princ))
(defun  C:9() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "9" "LT" "BYLAYER" "")(princ))
(defun  C:123() (setq a (ssget)) (setvar "cmdecho" 0) (command "change" a "" "p" "c" "bylayer" "la" "123" "LT" "BYLAYER" "")(princ))


;; 선택된 객체의 색상 변경 (00 ~ 99)
(defun C:00() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "7" "")(princ))
(defun C:11() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "1" "")(princ))
(defun C:22() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "2" "")(princ))
(defun C:33() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "3" "")(princ))
(defun C:44() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "4" "")(princ))
(defun C:55() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "5" "")(princ))
(defun C:66() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "6" "")(princ))
(defun C:77() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "15" "")(princ))
(defun C:88() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "41" "")(princ))
(defun C:99() (command "SELECT" "\\" "CHANGE" "P" "" "P" "C" "175" "")(princ))

