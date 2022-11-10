	program matriks
	integer:: i, j
	real, dimension(3,3):: matA, matB, res

	write(*,*) 'Masukkan nilai matriks A:'
 

	do i=1, 3
		do j=1, 3
			write(*,'(1X,A,I2,A,I2,A,\)')'A(',i,',',j,');'
			read(*,*) matA(i,j)
		enddo
	enddo
	do i=1,3
	write(*,*) (matA (i,j), j=1,3) 
	enddo

	write(*,*) 'Masukkan nilai matriks B:'

	do i=1, 3
		do j=1, 3
			write(*,'(1X,A,I2,A,I2,A,\)')'B(',i,',',j,');'
			read(*,*) matB(i,j)
		enddo
	enddo
	do i=1,3
	write(*,*) (matB (i,j), j=1,3) 
	enddo

	res(i,j) = (matA(i,j)-matB(i,j))
	do i=1,3
		write(*,*) (res(i,j), j=1,3) 
	enddo



	end
