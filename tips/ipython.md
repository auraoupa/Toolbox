# Redirect the output (stdout) of a command in a file :
https://stackoverflow.com/questions/14571090/ipython-redirecting-output-of-a-python-script-to-a-file-like-bash/14573397
``` 
 class redirect_output(object):

    def __init__(self, stdout='', stderr=''):
        self.stdout = stdout
        self.stderr = stderr

    def __enter__(self):
        self.sys_stdout = sys.stdout
        self.sys_stderr = sys.stderr

        if self.stdout:
            sys.stdout = open(self.stdout, 'w')
        if self.stderr:
            if self.stderr == self.stdout:
                sys.stderr = sys.stdout
            else:
                sys.stderr = open(self.stderr, 'w')

    def __exit__(self, exc_type, exc_value, traceback):
        sys.stdout = self.sys_stdout
        sys.stderr = self.sys_stderr
  ```
  and
  
  ```
  with redirect_output("my_output.txt"):
    %run my_script.py
  ```
        
