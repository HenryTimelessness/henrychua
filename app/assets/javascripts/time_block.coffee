TIMER = 600 * 1000 # 10 minutes
FINAL_HEIGHT = 50

$(document).on 'turbolinks:load', ->
  if $('.time-block-container')[0]
    resetTimer()
    startTimer()

resetTimer = ->
  # Get user time
  userTime = moment()
  # set user wake time at 8am
  wakeTime = moment(userTime).hour(8).seconds(0).minutes(0).milliseconds(0)

  # Find total blocks already past
  timeDiff = moment(userTime).diff(moment(wakeTime), 'seconds')
  totalBlocksToColour = timeDiff / 60 / 10
  console.log "#{totalBlocksToColour} blocks elapsed"

  # colour blocks
  $('.time-block').slice(-totalBlocksToColour).find('.time-block-fill').height(FINAL_HEIGHT)
  $('.time-block').eq(-Math.floor(totalBlocksToColour)).addClass('active')

startTimer = ->
  onComplete = ->
    console.log 'starting next block'
  onInstance = (steps, count) ->
    ratio = count / steps
    height = ratio * FINAL_HEIGHT
    wave_percent = "-#{((90 * (1 - ratio)) + 60)}%"
    current_block = $('.time-block.active')
    current_block.find('.time-block-fill').height(height)
    current_block.find('.wave').css({ 'top': wave_percent})
    if height == FINAL_HEIGHT
      current_block.removeClass('active') # remove active from current block
      current_block.prev().addClass('active') # find the adjacent block and set it active
      doTimer TIMER, 20, onInstance, onComplete
  doTimer TIMER, 20, onInstance, onComplete

# Self adjusting timer that uses the system clock to adjust js inaccuracies
# https://www.sitepoint.com/creating-accurate-timers-in-javascript/
doTimer = (length, resolution, oninstance, oncomplete) ->
  steps = length / 100 * resolution / 10
  speed = length / steps
  count = 0
  start = (new Date).getTime()

  instance = ->
    if count++ == steps
      oncomplete steps, count
    else
      oninstance steps, count
      diff = (new Date).getTime() - start - (count * speed)
      window.setTimeout instance, speed - diff
    return

  window.setTimeout instance, speed
  return