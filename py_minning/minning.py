import subprocess
def ex(cible):
    path_ex = "../t-rex-0.26.8-linux/"
    subprocess.run(["cd",path_ex,"&&","bash",cible])


