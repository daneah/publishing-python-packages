from libc.stdlib cimport malloc, free


def harmonic_mean(nums):
    cdef int length = len(nums)
    cdef double denominator = 0
    cdef int i

    cdef double* cnums = <double*>malloc(length * sizeof(double))

    if not cnums:
        raise MemoryError()

    try:
        for i in range(length):
            cnums[i] = nums[i]

        for i in range(length):
            denominator += 1 / cnums[i]

        return length / denominator
    finally:
        free(cnums)
