def kpmg(fname):
    o = {"a":{"b":{"c":"d"}}}
    for k in o.items():
        if fname == k[0]:
            for v in k[1].items():
                for kv in v[1].items():
                    print(kv[1])
        else :
            for v in k[1].items():
                if fname == v[0]:
                    for kv in v[1].items():
                        print(kv[1])
                else :
                    for kv in v[1].items():
                        if fname == kv[0]:
                            print(kv[1])
inp = input('Please enter a/b/c to fetch the value d from {"a":{"b":{"c":"d"}}} ')        
kpmg(inp)
       
        
        
    

