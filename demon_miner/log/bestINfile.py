import os
log_file = "log.txt"
contract_log_file = "small_log.ttx"
write = 1
look = 0
def main():
    file_read = open(log_file, 'r')
    file_write = open(contract_log_file,'w')
    status = 0
    while True:
        line = file_read.readline()
        if not line:
            break
        else:
            if line[0] == "-":
                status = write
            elif line == "\n":
                status = look
            else:
                pass
            if status == write:
                file_write.write(line)
    os.system("rm -fr"+log_file)     

main()