!pip install git+https://github.com/DLR-RM/rl-baselines3-zoo@update/hf
#!pip install rl_zoo3==2.0.0a9
!pip install gymnasium[atari]
!pip install gymnasium[accept-rom-license]
!apt install python-opengl
!apt install ffmpeg
!apt install xvfb
!pip3 install pyvirtualdisplay

!python3 -m rl_zoo3.train --algo dqn  --env SpaceInvadersNoFrameskip-v4 -f logs/ -c dqn.yml
!python3 -m rl_zoo3.enjoy  --algo dqn  --env SpaceInvadersNoFrameskip-v4  --no-render  --n-timesteps 5000  --folder logs/

nohup python3 -m rl_zoo3.train --algo dqn  --env SpaceInvadersNoFrameskip-v4 -f logs/ -c dqn.yml > myoutput.txt >2&1 