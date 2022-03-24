def substring(value, dictionary)
    scannedArray =[]
    answerHash = {} 
    dictionary= ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
        dictionary.each {|word|  scannedArray.push(value.scan(word)) }
        scannedArray.flatten!
        dictionary.each do |word|
            if (scannedArray.count(word) > 0)
            answerHash[word] = scannedArray.count(word)
            end
        end
        return answerHash
end

