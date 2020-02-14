# TransportPCE

TransportPCE describes an application running on top of the OpenDaylight controller. Its primary function is to control an optical transport infrastructure using a non-proprietary South Bound Interface (SBI).

[TransportPCE Home](https://wiki.opendaylight.org/view/TransportPCE:Main)
[Opendaylight Home](https://www.opendaylight.org/)

## Supported tags
- latest

## What's inside ?
- Based on anapsix/alpine-java:8_jdk
- No module installed (you can connect to the CLI to set whatever module you want to use)
- Exposed port 6633 (Openflow), 8181 (WebUI/REST api) & 8101 (karaf CLI)

## How to use it ?
### Run container
`docker run -it -p 6633:6633 -p 8181:8181 -p 8101:8101 --name=tpce transportpce`

### Start container
`docker start -i tpce`
