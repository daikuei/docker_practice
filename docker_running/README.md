1.  Install gitlab-runner:

    ```shell
    $ sudo apt install gitlab-runner
    ```



1.  login to new gitlab-runner (docker)

2.  ```
    # install Docker CE
    
    $ apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common
    
    $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
    $ apt-key fingerprint 0EBFCD88
    
    $ add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    
    $ apt-get install docker-ce
    
    $ gpasswd -a gitlab-runner docker
    
    
    ```

3.  