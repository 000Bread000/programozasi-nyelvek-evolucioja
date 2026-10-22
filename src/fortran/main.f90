! Modern Fortran (2008) example. Fortran itself dates back to 1957.
program statistics_fortran
    use, intrinsic :: iso_fortran_env, only : real64
    implicit none
    integer, allocatable :: scores(:)
    integer :: total
    real(real64) :: average

    allocate(scores(5))
    scores = [12, 18, 25, 31, 44]
    total = sum(scores)
    average = real(total, real64) / real(size(scores), real64)

    write(*, '(A,I0)') 'Sum: ', total
    write(*, '(A,F0.2)') 'Average: ', average

    deallocate(scores)
end program statistics_fortran
