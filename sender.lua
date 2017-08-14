
-- initialization
function init()
    -- set the speed of the robot to zero
    robot.wheels.set_velocity(10,10)
end

-- actions for each step
function step()
    -- each step, send a message
    pos = robot.positioning.position.x
    --log(pos)
    pos = pos*10
    pos = math.floor(pos)
    send_message()
end

-- reinitialize the controller
function reset()
end

function destroy()
    -- put your code here
end

---------------------------------------------------------------------

-- sends the message "2" via range and bearing
function send_message()
    index = 1
    message = pos
    robot.range_and_bearing.set_data(index, message)
    log("Sender sending: " .. message)
end
