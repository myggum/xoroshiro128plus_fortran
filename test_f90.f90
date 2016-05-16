program test_f90
  use m_xoroshiro128plus

  type(rng_t) :: rng
  integer     :: i

  rng%s = (/-1337, 9812374/)

  do i = 1, 10
     print *, rng%next()
  end do

  call rng%jump()

  do i = 1, 10
     print *, rng%next()
  end do
end program test_f90
