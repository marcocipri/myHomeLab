if [[ "$(python3 -V)" =~ "Python" ]]; then
        echo 'Python found'
else
        tce-load -wi python3.6
        tce-load -wi python
        curl https://bootstrap.pypa.io/get-pip.py | sudo python -
fi