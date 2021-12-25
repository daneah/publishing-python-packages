from setuptools import setup

from Cython.Build import cythonize

setup(
    ext_modules=cythonize("src/imppkg/harmonic_mean.pyx"),
)
