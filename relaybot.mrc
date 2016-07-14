;WBNC Relay Bot v1.0
;Credit to nick1 for the original code
;-----------CONFIG---------------
alias config.load {
  echo -a Loading config...
  set %network1 xeroxIRC
  set %network2 Rizon
  set %network3 Freenode
  set %network4 MindForge
  set %relaychannel #DreamBNC
  echo -a Config has been loaded! To run the bot, connect to the IRC networks listed in the config.
}
;-----------END CONFIG-----------
on *:text:!relay mindforge*:#DreamBNC-Relay:{
  if ($network == Rizon) {
    scid $net(MindForge) msg %relaychannel [RELAY] (From $nick $+ ) $3-
  }
}
alias net {
  var %netcount $scon(0)
  while %netcount {
    if ($scon(%netcount).network == $1) { var %netid %netcount }
    dec %netcount
  }
  scon %netid return $!cid
}

on *:text:!relay xeroxirc*:#DreamBNC-Relay:{
  if ($network == Rizon) {
    scid $net(xeroxIRC) msg %relaychannel [RELAY] (From $nick $+ ) $3-
  }
}
alias net {
  var %netcount $scon(0)
  while %netcount {
    if ($scon(%netcount).network == $1) { var %netid %netcount }
    dec %netcount
  }
  scon %netid return $!cid
}

on *:text:!relay freenode*:#DreamBNC-Relay:{
  if ($network == Rizon) {
    scid $net(Freenode) msg %relaychannel [RELAY] (From $nick $+ ) $3-
  }
}
alias net {
  var %netcount $scon(0)
  while %netcount {
    if ($scon(%netcount).network == $1) { var %netid %netcount }
    dec %netcount
  }
  scon %netid return $!cid
}

on *:text:!relay rizon*:#DreamBNC-Relay:{
  if ($network == Rizon) {
    scid $net(Rizon) msg %relaychannel [RELAY] (From $nick $+ ) $3-
  }
}
alias net {
  var %netcount $scon(0)
  while %netcount {
    if ($scon(%netcount).network == $1) { var %netid %netcount }
    dec %netcount
  }
  scon %netid return $!cid
}

on *:text:*:#DreamBNC:{
  if ($network == %network1 $+ ) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == %network2 $+ ) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == %network3 $+ ) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == %network4 $+ ) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
}
alias net {
  var %netcount $scon(0)
  while %netcount {
    if ($scon(%netcount).network == $1) { var %netid %netcount }
    dec %netcount
  }
  scon %netid return $!cid
}
on *:TEXT:!info:#:{ msg $chan WBNC Relay Bot v1.0 - http://github.com/wbnc/relay-bot-v1.0
on *:TEXT:!slap*:#:{ describe $chan slaps $2- around a bit with a large fishbot
