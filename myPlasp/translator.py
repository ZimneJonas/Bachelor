import re



with open('firstTests/helloWorld/helloWorld-problem.pddl') as old_file:
re.findall(r"(:goal" , old_file)
#    (and
#        ; The only goal is to reach a state where we said 'hello'
#        (said_hello_to world)
#    )
#)
#))












####
def translator():
    with open('translation.lp','w') as new_file:
        with open('') as old_file:
            for line in old_file:
                line = line.replace('','')
                if "" in line and "" not in line:
                    new_file.write("")
         
