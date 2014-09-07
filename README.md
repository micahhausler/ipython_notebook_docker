IPython in Docker
=================

This is a simple container of IPython notebook running in a docker container that includes Python 2.7.6 with several python libraries

* Django==1.7
* Jinja2==2.7.3
* Werkzeug==0.9.6
* boto==2.32.1
* httpie==0.8.0
* ipython==2.2.0
* matplotlib==1.4.0
* mock==1.0.1
* nose==1.3.4
* numpy==1.9.0
* pandas==0.14.1
* pytz==2014.7
* pyzmq==14.3.1
* requests==2.2.1
* tornado==4.0.1
* virtualenv==1.11.4

Get
---

```
docker pull micahhausler/ipython_notebook
```

Run
---
```
docker run -d -p 8888:8888 micahhausler/ipython_notebook
```

Use
---

Open `http://<docker-daemon-ip>:8888` in your web browser of choice

Registry
--------
See https://registry.hub.docker.com/u/micahhausler/ipython_notebook/


License
-------
MIT - See [LICENSE](LICENSE)