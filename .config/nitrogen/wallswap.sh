#!/bin/bash

mv -f /home/sam/.config/nitrogen/bg-saved.cfg /home/sam/.config/nitrogen/bg-saved.cfg.bak

mv -f /home/sam/.config/nitrogen/bg-saved.cfg.night /home/sam/.config/nitrogen/bg-saved.cfg

nitrogen --restore

mv -f /home/sam/.config/nitrogen/bg-saved.cfg.bak /home/sam/.config/nitrogen/bg-saved.cfg.night
