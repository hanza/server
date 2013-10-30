app.filter 'range', ()->
  return (input, end)->
    startvalue = 1
    endvalue = parseInt(end)
    for i in [startvalue..endvalue] by 1
      input.push(i)
    return input
