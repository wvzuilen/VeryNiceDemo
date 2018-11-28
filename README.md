# VeryNiceDemo

For the sake of learning I made a Jenkins pipeline which builds a Pharo Docker image (Pharo 6.1 32bit on top of Ubuntu 14.4 LTS). On top of the Pharo image a Seaside demo webpage is placed. This second image starts the demo and exposes port 8088 when a container is start.

* https://hub.docker.com/r/wvzuilen/pharo/
* https://hub.docker.com/r/wvzuilen/verynicedemo/

### To do's:
- [ ] Add ENV for the ports
