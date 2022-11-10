	program matriks
	integer:: i, j
	real:: result
	real, dimension(3,3):: matA

	write(*,*) 'Masukkan nilai matriks A:'
	

	do i=1, 3
		do j=1, 3
			write(*,'(1X,A,I2,A,I2,A,\)')'B(',i,',',j,');'
			read(*,*) matA(i,j)
		enddo
	enddo
	do i=1,3
	write(*,*) (matA (i,j), j=1,3) 
	enddo
	
	end