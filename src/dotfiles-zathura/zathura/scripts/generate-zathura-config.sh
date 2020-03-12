#!/bin/bash
## Generated with: generate-zathura-config.sh.

background="$(xrdb -query | grep '^*.background:' | awk '{print $2}')"
foreground="$(xrdb -query | grep '^*.foreground:' | awk '{print $2}')"
color1="$(xrdb -query | grep '^*.color1:' | awk '{print $2}')"
color2="$(xrdb -query | grep '^*.color2:' | awk '{print $2}')"

cat <<CONF
set font "Inconsolata 18"

set search-adjust true
set incremental-search true

set page-padding 8
set pages-per-row 1

set adjust-open width
set window-title-page true
set window-title-basename true
set window-title-home-tilde true

set selection-clipboard clipboard

set n-completion-items 16
set completion-bg "$background"
set completion-fg "$foreground"

set completion-group-bg "$background"
set completion-group-fg "$color2"

set completion-highlight-fg "$background"
set completion-highlight-bg "$foreground"

set default-bg "$background"
set default-fg "$foreground"

set inputbar-bg "$background"
set inputbar-fg "$foreground"

set notification-bg "$background"
set notification-fg "$foreground"

set notification-error-bg "$color1"
set notification-error-fg "$foreground"

set notification-warning-bg "$color1"
set notification-warning-fg "$foreground"

set statusbar-bg "$background"
set statusbar-fg "$foreground"

set index-bg "$background"
set index-fg "$foreground"

set index-active-bg "$background"
set index-active-fg "$foreground"

set render-loading-bg "$background"
set render-loading-fg "$foreground"
CONF
