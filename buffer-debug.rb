buffer = []

producer = Thread.start {
    while (true)
        if (buffer.length < 5)
            newnumber = rand(100)
            puts "put in number: #{newnumber}, buffer is now #{buffer << newnumber}"
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