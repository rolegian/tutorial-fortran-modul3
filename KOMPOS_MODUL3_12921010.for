cccccc Nama:  Muhamad Alfren Rolegian
cccccc NIM :  12921010
	program matriks
	real:: alphaT, betaS, Kp,  A, B, C
	integer:: i, j
	real, dimension(3,3):: matA, matB, res
	real, dimension(3,1):: koef
	real, dimension(1,3):: temp, sal, tekanan

	alphaT=	-0.00025*(-1)
	betaS= 0.000785
	Kp= 0.00000045

	data matB/293,293,293,35,35,35,0,0,0/
	data temp/5,4,3/
	data sal/-2,-3,-4/
	data tekanan/100,100,100/
	data koef/-0.00025,0.000785,0.00000045/

cccccc Memasukkan data stasiun pada matrikas A (matA)
	do i=1,3
		do j=1, 3
		write(*,'(1X,A,I2,A,I2,A,\)')'A(',i,',',j,'):'
		read(*,*) matA(i,j)
		end do
	end do
	
	write(*,*) "Kondisi di stasiun:"
	write(*,*) '  Temperatur (K)','  Salinitas(psu) ',' Tekanan(dbar)'
	do i=1,3
		write(*,*) (matA(i,j), j=1,3)
	end do

cccccc Matrik B sebagai matriks data acuan
	write(*,*) "Kondisi acuan:"
	write(*,*) '  Temperatur (K)','  Salinitas(psu) ',' Tekanan(dbar)'
	do i=1,3
		write(*,*) (matB(i,j), j=1,3)
	end do

	write(*,*) 'Hasil setelah dikurangi acuan'
	write(*,*) '  Temperatur (K)','  Salinitas(psu) ',' Tekanan(dbar)'
	do i=1,3
		write(*,*) (matA(i,j) - matB(i,j), j=1,3)
	end do


	write(*,*) "Koefisien:"
	do i=1,3  
		write(*,*) (koef(i,j), j=1,1)
	end do

	do i=1,3
	res(i,1)= temp(i,1)*alphaT
	end do

	do i=1,3
	 res(i,2)= sal(i,1)*betaS
	end do

	do i=1,3
	 res(i,3)= tekanan(i,1)*Kp
	end do

ccccc Hasil untuk setiap stasiun setelah dikurangi nilai acuan
	write(*,*) 'Hasil fraksi perubahan densitas'
	write(*,*) '     Temperatur(K)','Salinitas(psu) ',' Tekanan(dbar)'
	do i=1,3
	write(*,*) 'stasiun',i,(res(i,j), j=1,3)
	end do

ccccc Hasil Akhir
	write(*,*) 'Hasil perubahan fraksi akhir'
	 A= (1.25E-3)+(-1.57E-3)+(4.5E-5 )
	 B= (1E-3)+(-2.355E-3)+(4.5E-5	)
	 C= (7.5E-4)+(-3.14E-3)+(4.5E-5)
	write(*,*) A,'  ', B,'  ', C

	end
