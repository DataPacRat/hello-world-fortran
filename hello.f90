program hello
!
! Title: Hello World
! Authour: DataPacRat <datapacrat@datapacrat.com>
! Date: 2017/07/26
! License: Modified BSD License, aka BSD-3-Clause
!
! Traditional teaching program to demonstrate basic form.
!
! I plan on using it as a template to throw in better coding practices
! as I learn them.
!
    implicit none
    ! Without the previous line, Fortran has a weird default behaviour:
    ! variables starting with i through n are integers, the rest reals.
    real :: a, b, c
    integer :: j, k, l
    complex :: euler
    real, parameter :: pi = 4.0 * atan(1.0)
    ! parameters can't be changed after initial assignment.
    real, parameter :: phi = (1.0 + (5.0 ** 0.5)) / 2.0
    real, parameter :: e = exp(1.0)
    complex, parameter :: i = (0,1) ! sqrt(-1)
    character (len = 11) :: word ! word holds 11 characters
    word = "Hello World"
    write (*,*) "Hello World"
    write(*,*) "pi: ",pi
    write(*,*) "phi: ",phi
    write(*,*) "e: ",e
    write(*,*) "i: ",i
    euler = (e ** (pi * i)) + 1.0
    write(*,*) "e^(pi*i)+1:", euler
    if (euler == (0.0,0.0)) then
        write(*,*) 'Math works :)'
    elseif (euler /= (0.0,0.0)) then
        write(*,*) "Looks like math doesn't work. :("
    else
        write(*,*) "Looks like logic doesn't work either. :("
    endif
    write(*,*) word
    stop "Goodbye World"
end program hello
