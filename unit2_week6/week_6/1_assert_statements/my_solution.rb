# U2.W6: Testing Assert Statements


# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end
 
name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# define assert.
# raise "assertion failed" 
# unless it is yield.



# 3. Copy your selected challenge here
p essay_writer("Important people", "Christopher Nolan", 1970, "Christopher Jonathan James Nolan (/ˈnoʊlən/; born 30 July 1970)[1] is a British–American film director, screenwriter and producer. Nolan created several of the most successful films of the early 21st century, and his eight pictures have grossed more than $3.5 billion worldwide.[2] He is known for bridging the gap between art house and blockbuster films by presenting audiences with intelligent, challenging narratives.")

p essay_writer("Important people","Chuck Palahniuk", 1962,"Charles Michael  Palahniuk (/ˈpɔːlənɪk/;[1] born February 21, 1962) is an American novelist and freelance journalist, who describes his work as transgressional fiction. He is best known as the author of the award-winning novel Fight Club, which also was made into a feature film. He maintains homes in the states of Oregon and Washington.")

p essay_writer("Important people","Arthur Conan Doyle", 1859,"Sir Arthur Ignatius Conan Doyle DL (22 May 1859 – 7 July 1930) was a Scottish physician and writer who is most noted for his fictional stories about the detective Sherlock Holmes, which are generally considered milestones in the field of crime fiction. He is also known for writing the fictional adventures of a second character he invented, Professor Challenger, and for popularising the mystery of the Mary Celeste.[1] He was a prolific writer whose other works include fantasy and science fiction stories, plays, romances, poetry, non-fiction, and historical novels.")





# 4. Convert your driver test code from that challenge into Assert Statements

assert {important people == "Christopher Nolan was a very powerful person. They were born in 1970. Christopher Jonathan James Nolan (/ˈnoʊlən/; born 30 July 1970)[1] is a British–American film director, screenwriter and producer. Nolan created several of the most successful films of the early 21st century, and his eight pictures have grossed more than $3.5 billion worldwide.[2] He is known for bridging the gap between art house and blockbuster films by presenting audiences with intelligent, challenging narratives."}
assert {important people == "Chuck Palahniuk was a very powerful person. They were born in 1962. Charles Michael  Palahniuk (/ˈpɔːlənɪk/;[1] born February 21, 1962) is an American novelist and freelance journalist, who describes his work as transgressional fiction. He is best known as the author of the award-winning novel Fight Club, which also was made into a feature film. He maintains homes in the states of Oregon and Washington. "}
assert {important people == "Arthur Conan Doyle was a very powerful person. They were born in 1859. Sir Arthur Ignatius Conan Doyle DL (22 May 1859 – 7 July 1930) was a Scottish physician and writer who is most noted for his fictional stories about the detective Sherlock Holmes, which are generally considered milestones in the field of crime fiction. He is also known for writing the fictional adventures of a second character he invented, Professor Challenger, and for popularising the mystery of the Mary Celeste.[1] He was a prolific writer whose other works include fantasy and science fiction stories, plays, romances, poetry, non-fiction, and historical novels."}

# 5. Reflection 
I have been having trouble with Driver code on some of my previous assignments. One I would spend most of my time on the actual code.
after I finished the code I wouldn't know what to put into the driver code even though it was simple. The inputs confused me on some
challenges. Assert seems fairly simple just as driver code, but I worry I might have a similar problem with time restraints. but these
are important steps in coding that I have to practice more. This weeks work load seems fairly simple. It will give me time to go back and 
practice my driver code and now the assrts.

in the defined asserd. line number 15 is the failed assert.