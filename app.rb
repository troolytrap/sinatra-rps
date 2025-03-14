require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <a href= /rock>
    Play Rock
  </a>
  <div>
  <a href= /paper>
    Play Paper
  </a>
  <div>
  <a href= /scissors>
    Play Scissors
  </a>
  "
end

get("/rock") do
moves = ["rock", "paper", "scissors"]
compmove = moves.sample 
if compmove == "rock"
  outcome = "We tied!"
elsif compmove == "paper"
  outcome = "We lost!"
elsif compmove == "scissors"
  outcome = "We won!"
end

"
<h2>
We played rock!
</h2>

<h2>
They played #{compmove}!
</h2>

<h2>
#{outcome}
</h2>

<a href= /rock>
    Play Rock
  </a>
  <div>
<a href= /paper>
    Play Paper
  </a>
  <div>
<a href= /scissors>
    Play Scissors
  </a>
  <div>
  <a href= />
    Rules
  </a>

"

end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  compmove = moves.sample 
  if compmove == "rock"
    outcome = "We won!"
  elsif compmove == "paper"
    outcome = "We tied!"
  elsif compmove == "scissors"
    outcome = "We lost!"
  end
  
  "
  <h2>
  We played paper!
  </h2>
  
  <h2>
  They played #{compmove}!
  </h2>
  
  <h2>
  #{outcome}
  </h2>

  <a href= /rock>
    Play Rock
  </a>
  <div>
<a href= /paper>
    Play Paper
  </a>
  <div>
<a href= /scissors>
    Play Scissors
  </a>
  <div>
  <a href= />
    Rules
  </a>
  "
  end
  
  get("/scissors") do
    moves = ["rock", "paper", "scissors"]
    compmove = moves.sample 
    if compmove == "rock"
      outcome = "We lost!"
    elsif compmove == "paper"
      outcome = "We won!"
    elsif compmove == "scissors"
      outcome = "We tied!"
    end
    
    "
    <h2>
    We played scissors!
    </h2>
    
    <h2>
    They played #{compmove}!
    </h2>
    
    <h2>
    #{outcome}
    </h2>

    <a href= /rock>
    Play Rock
  </a>
  <div>
<a href= /paper>
    Play Paper
  </a>
  <div>
<a href= /scissors>
    Play Scissors
  </a>
  <div>
  <a href= />
    Rules
  </a>
    "
    end
    