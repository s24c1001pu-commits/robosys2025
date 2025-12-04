from setuptools import setup, find_packages
import os
from glob import glob

package_name = 'mypkg'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(),   # ← ★ここが超重要
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        (os.path.join('share', package_name, 'launch'),
            glob('launch/*.launch.py')),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='takuto',
    maintainer_email='s24C1001pu@s.chibakoudai.jp',
    description='a package for practice',
    license='BSD-3-Clause',
    entry_points={
        'console_scripts': [
            'talker = mypkg.talker:main',
            'listener = mypkg.listener:main',
        ],
    },
)

