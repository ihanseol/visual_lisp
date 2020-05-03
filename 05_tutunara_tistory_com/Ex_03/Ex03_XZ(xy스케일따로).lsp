 - 선택한 블럭이 아닌 객체를 X,Y scale값을 다르게 한다.
 - 선택한 객체를 새로운 거리를 기준으로 정확하게 축척된다.
(defun c:XZ()
   (princ " = X,Y SCALE을 각각 입력한다.")
   (setvar "cmdecho" 0)
   (setq ko_sub (ssget))
   (setq ko_pt (getpoint "기준점 : "))
   (setvar "osmode" 33)
   (setq dis_x (getdist ko_pt "\n x축의 기존 거리를 입력하세요"))
   (setq dis_y (getdist ko_pt "\n y축의 기존 거리를 입력하세요"))
   (setq ko_x (getreal "\n 새로운 X축의 거리를 입력하세요: "))
   (setq ko_y (getreal "\n 새로운 Y축의 거리를 입력하세요: "))
   (setq cal_x (/ ko_x dis_x))
   (setq cal_y (/ ko_y dis_y))
   (command "wblock" "ko-test.dwg" "" ko_pt ko_sub "")
   (command "insert" "ko-test.dwg" ko_pt cal_x cal_y "")
   (command "explode" "l" "")
   (command "purge" "b" "ko-test" "" "y")
   (vl-file-delete "ko-test.dwg")
   (prin1)
)