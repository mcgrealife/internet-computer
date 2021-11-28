actor {

    // This is the logic for a picture book

    // ideally, I'd link the image and text to the counter declaritively, but then i'd have to use some framework. 
    // That can be version 2. For now I should just update it. 
    
    // clicking button will increment this counter
    var counter : Nat = 0;

    public func next() : async Text {
        if (counter >= 8) {
            counter := 0;
        } else {
            counter += 1;
        };
        return await getText();
    };

    

    public query func getText() : async Text {
    switch (counter) {
        case 0 "This website is hosted on the Internet Computer!";
        case 1 "The website front end that you see now is similar to other websites – built with HTML/CSS/JS, or any other frontend UI library or framework!";
        case 2 "And just like regualr websites – this content is being served from computer nodes in data centers around the world!";
        case 3 "Except, instead of centralized companies like Amazon or Google owning the servers, they are independently owned.";
        case 4 "The key is that each node in the data center all follows the same 'protocol' ie 'rules'. These is the 'ICP' Internet Computer Protocol. And it allows decntralization and security.";
        case 5 "First - the data for this website is actually copied and stored on _multiple_ nodes.";
        case 7 "the reason it takes 2-3 seconds to update the text after you click next, is because unlike traditional databases, where the frontend requests data from a single server node - the internet computer protocol requests a copy of data from a minimum of 7 different nodes around the world and checks if the data match. If all servers reach a 'consensus' that the data matches, then it will serve the data to this frontend. So while it is 2 seconds slower than traditional database designs – it provides an extreme level of data integrity. However, the internet computer also provides a way to query data without reaching a 'consensus' – which will return your data in 0.2 milliseconds – so just as fast as the web! Even without reaching consensus, there is a far greater chance that your data is accurate, compared to traditional databases. Another way would be to get all data from a single consensus call, and then cache it in the browser, for instant access later.";
        case 8 "The end. Refresh or click next!";
        case _ "error, refresh refresh!";
    }
    };

    public query func getButtonText() : async Text {
        switch (counter) {
            case 0 "Next";
            case 1 "language agnostic!";
            case 2 "Okay, so how it is different?";
            case 3 "How do they communicate with each other then?";
            case 4 "Next";
            case 5 "Next.";
            case 6 "Next.";
            case 7 "Next.";
            case 8 "Restart.";
            case _ "error, refresh refresh!";
        }
    };

    // Emoji placeholders. Replace with custom graphics later.
    public query func getImage() : async Text {
        
        switch (counter) {
            case 0 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-zero_30-fe0f-20e3.png";
            case 1 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-one_31-fe0f-20e3.png";
            case 2 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-two_32-fe0f-20e3.png";
            case 3 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-three_33-fe0f-20e3.png";
            case 4 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-four_34-fe0f-20e3.png";
            case 5 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-five_35-fe0f-20e3.png";
            case 6 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-six_36-fe0f-20e3.png";
            case 7 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-seven_37-fe0f-20e3.png";
            case 8 "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-digit-eight_38-fe0f-20e3.png";
            case _ "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/keycap-number-sign_23-fe0f-20e3.png";
        }
    };



// utils
    public func back() : async () {
        if (counter != 0) {
            counter -= 1
        } else {
            // already at 0!
        };
    };


    public query func getCounter() : async Nat {
        return counter;
    };

    public func resetCounter() : async () {
        counter := 0;
    };

};
