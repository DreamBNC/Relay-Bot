# Made by W24 for DreamBNC
# Credit to nick1 for the original code

on *:text:!relay *:#DreamBNC-Relay:{
  if ($network == Rizon) {
    scid $net( $+ $2 $+ ) msg %relaychannel [RELAY] (From $nick $+ ) $3-
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
  if ($network == Freenode) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == Rizon) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == EsperNet) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == xeroxIRC) {
    scid $net(Rizon) msg #DreamBNC-Relay $+([,$network,]) < $+ $nick $+ > $1-
  }
  elseif ($network == MindForge) {
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
