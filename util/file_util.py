
class FileUtil:
    def saveStrListTofile(strlist:list ,exportpath:str):
        with open(exportpath ,"w") as f:
            strnames = "\n".join(strlist)
            f.writelines(strnames)

