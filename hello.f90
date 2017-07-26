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

! If this program used external modules, they'd be declared here.

    implicit none
    ! Without the previous line, Fortran has a weird default behaviour:
    ! variables starting with i through n are integers, the rest reals.

! I'm going to try to create some double-precision and quad-precision
! variables here.
    integer, parameter :: sp = kind(1.0)
    integer, parameter :: dp = selected_real_kind(2*precision(1.0_sp))
    integer, parameter :: qp = selected_real_kind(2*precision(1.0_dp))

! variable declarations
    real(kind=sp) :: a, b, c
    integer :: j = b'00011001', k = o'31', l = 25, m = z'19'

! Previous line should have initialized all four variables to
! the same value, in binary, octal, decimal, and hexidecimal.

    complex(kind=qp) :: euler
    real(kind=qp) :: eulerreal, eulerimaginary
    real(kind=qp) :: epsilonquad = 3.0e-34

! parameters can't be changed after initial assignment.
    real(kind=qp), parameter :: pi = (4.0_qp * atan(1.0_qp))
!    pi = 3.14159265358979323846264338327950288419716939937510_qp
    real(kind=qp), parameter :: phi = (1.0_qp + (5.0_qp ** 0.5_qp)) / 2.0_qp
!    phi = 1.61803398874989484820458683436563811772030917980576286213544862270526046281890_qp
    real(kind=qp), parameter :: e = exp(1.0_qp)
!    e = 2.71828182845904523536028747135266249775724709369995_qp
    complex(kind=qp), parameter :: i = (0.0_qp,1.0_qp)
! i = sqrt(-1)
    logical, parameter :: true = .true., false = .false.
    character (len = 11) :: word = "Hello World"
! word is a string holding 11 characters

! program code

    write (*,*) "Hello World"
    ! the classic line

    write(*,*) "pi: ", pi
    write(*,*) "phi: ", phi
    write(*,*) "e: ", e
    write(*,*) "i: ", i
    ! print the numbers to see if the formulas generated the
    ! right results.

    euler = (e ** (pi * i)) + 1.0_qp
    write(*,*) "e^(pi*i)+1: ", euler
    eulerreal = realpart(euler)
    eulerimaginary = imagpart(euler)
    if ((abs(eulerreal-0.0_qp) < epsilonquad).and.((abs(eulerimaginary-0.0_qp) < epsilonquad))) then
        write(*,*) 'Math works, close enough. :)'
    elseif (euler /= (0.0_qp,0.0_qp)) then
        write(*,*) "Looks like math doesn't work. :("
    else
        write(*,*) "Looks like logic doesn't work either. :("
    endif
    ! do some basic math at quad-precision to see how accurate it is.

    write(*,*) j, k, l, m
    ! check that binary, octal, and hexidecimal variable
    ! assignment works.

    write(*,*) word
    ! No real reason, just needed to use the string to keep the
    ! compiler from complaining.

    stop "Goodbye World"
    ! Optional command to stop program.

end program hello
