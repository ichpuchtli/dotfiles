#!/bin/bash

mv -f ~/.config/nitrogen/bg-saved.cfg ~/.config/nitrogen/bg-saved.cfg.bak

mv -f ~/.config/nitrogen/bg-saved.cfg.night ~/.config/nitrogen/bg-saved.cfg

nitrogen --restore

mv -f ~/.config/nitrogen/bg-saved.cfg.bak ~/.config/nitrogen/bg-saved.cfg.night
