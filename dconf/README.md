# This is where I keep plain text configurations for GNOME/gsettings.
#
# gsettings is a high-level, typed interface to a settings backend;
# on free Unices and GNU/Linux, gsettings uses dconf as its backend.
# dconf is untyped, so it's simple to do plain text configuration with
# it.  It's basically a hierarchical {dictionary,map,hash-table}, with
# /unix/style/paths, each path containing some number of
# key-value pairs. Most of the time, the dconf database is compiled
# onto disk as a raw datastructure, and mmap'd in for lightning speed
# lookup.
#
# I can use the following command to write out the dconf database
# recursively as plain text, starting from the root:
# dconf dump / > ~/.config/dconf/user.d/everything.conf
#
# If I modify those key-value pairs or move to a new machine, and want
# to load them back in, I use:
# cat ~/.config/dconf/user.d/* | dconf load /
#
# Of course, most of the settings in dconf are irrelevant to me, or
# are machine specific, so I want to find the ones that I actually
# care about.
# I can do this by grepping the dump from dconf, or dumping sub-paths like so:
# dconf dump /org/gnome/terminal
# (it tab-completes, so I can do some exploration).
#
# That's a bit of a pain, so instead I can just:
# dconf watch /
# to see all the configuration changes as they happen, then change
# something in the GUI to find out where the relevant setting is.