buffer = []

producer = Thread.start {
    while (true)
        if (buffer.length < 5)
            buffer << rand(100)
            sleep(rand(0.5))
        else
            sleep(rand(5))
        end
    end
}
 
consumer = Thread.start {
    while (true)
        if (!buffer.empty?)
            puts "took out number: #{buffer.shift}"
            sleep(rand(0.5))
        else
            sleep(rand(5))
        end
    end
}

sleep(100)