import sys
from PyOmniFocus import __version__

extra = {}
if sys.version_info >= (3, 0):
    extra.update(use_2to3=True)

try:
    from setuptools import setup, find_packages, Command
except ImportError:
    from distutils.core import setup, find_packages, Command

author = "Marc Abramowitz"
email = "marc@marc-abramowitz.com"
desc = """Experimental Python interface to OmniFocus"""
long_desc = open('README.md').read()

setup(name='PyOmniFocus',
      version=__version__,
      description=desc,
      long_description=long_desc,
      data_files=[('', ['README.md'])],
      author=author,
      author_email=email,
      url='https://github.com/msabramo/PyOmniFocus',
      license='BSD',
      packages=find_packages(exclude=['ez_setup', 'examples', 'tests']),
      zip_safe=False,
      platforms=["any"],
      install_requires=['docopt', 'sqlalchemy'],
      test_suite = 'nose.collector',
      entry_points="""
      [console_scripts]
      omnifocus-cli = omnifocuscli:main
      """,
      **extra
)
