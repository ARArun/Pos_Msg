
function init()
    -- init the index

    -- set the speed of the robot to zero
    robot.wheels.set_velocity(0,0)
end

-- actions for each step
function step()
    -- each step, take a different color
    receive_message()
end

-- reinitialize the controller
function reset()
    -- reinit the index
end

function destroy()
    -- put your code here
end

---------------------------------------------------------------------

-- receives a message
function receive_message()
    if robot.range_and_bearing[1].data then
        message = robot.range_and_bearing[1].data
        log("Receiver receiving: " .. message[1])
    end
end
