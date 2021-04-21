# openIMSCore School Project
---
## Table of Contents

- [General presentation of the IMS](#general-presentation-of-the-ims)
- [General presentation of OpenIMSCore](#general-presentation-of-openimscore)
- [Installation of IMS network core](#installation-of-ims-network-core)
---
## General presentation of the IMS

### Introduction
  IMS (IP Multimedia Subsystem) is a new multimedia domain defined by 3GPP in release 5. IMS is embedded behind the packet domain (PS: Packet Switching) of the mobile core network and offers many services such as: 

- Television over IP (IPTV)
- Video on demand (VoD)
- Presence (online, busy, ...)
- Instant messaging
- etc

### The IMS entities
The some entities of the IMS are:

- CSCF (Call Session Control Function)
- HSS (Home Subscriber Server)
- MRF (Media Resource Function)
- IM-MGW (IP MultiMedia Gateway)
- MGCF (Media Gateway Controller Function)
- AS (Application Servers)
All these entities are software and can be installed on a single server or on several servers (distributed architecture). 
	
#### Proxy CSCF
  The CSCF proxy is the first point of entry of the IMS core. It is connected to the GGSN/PGW (GGSN: Gateway GPRS Support Node, PGW: Packet Data Network Gateway) and BRAS (Broadband Access Server) entities. 
  
#### Interrogating CSCF 
  The ICSCF is responsible for querying the HSS database to retrieve the name and address of the registration server (SCSCF). The ICSCF receives the requests, queries the HSS via the Diameter protocol, receives a response from the HSS and relays the received SIP messages to the appropriate SCSCF, hence the proxy function

**Note**: PCSCF and ICSCF are proxy servers. 

#### Serving CSCF 
The SCSCF is a "Registrar" or registration server. It is responsible for registering IMS subscribers (IMS clients) in the IP multimedia core. After receiving a SIP/Register request from the ICSCF, the SCSCF retrieves the authentication quintuplet (RAND, Kc, Ki, AUTN and XRES) from the HSS database.
The SCSCF ensures the execution of calls and services in the IMS core.  

#### HSS 
The HSS stores the authentication quintuplet, profiles and subscription lists of IMS subscribers. 
The HSS uses the **Cx** interface to communicate with the SCSCF/ICSCF and the **Sh** interface for interconnection with the AS

#### MRF
The MRF ensures the storage of announcement tapes (examples: insufficient credit, voice mail, ...). The MRF allows to adapt the media streams and to mix them.
The MRF is divided into two entities:

- MRFC (Media Resource Function Control)
- MRFP (Media Resource Function Processor)
	
Between MRFC and MRFP, the MEGACO protocol is used. 
The MRFC provides the control of the announcement band messages in the MRFP. The MRFP provides transport, storage and playback of the announcement tapes.

#### AS
 L'AS offre un contexte d'exécution pour les composants applicatifs. Il existe plusieurs types de serveur AS:
 
- SIP AS
- SSF AS
- OSA AS

Les AS sont interconnectes au coeur IMS par le biais des interfaces **Sh** vers le HSS, ISCSF et le SCSCF. Les AS permettent d'offrir des services a valeurs ajoutes: Presence, IPTV, messagerie instantane, SMS/USSD, etc. 

#### MGCF and IM-MGW
The MGCF/IM-MGW couple ensures the interfacing of the IMS core with classical TDM (Time Division Multiplexing) networks. 
The IM-MGW ensures the transport, the adaptation of the TDM circuits in RTP (Real Tine Protocol) flow and vice versa.
The MGCF allows the control of the IM-MGW resources through the MEGACO/H248 protocol.

### IMS Architecture
![architecutreIMS](https://user-images.githubusercontent.com/68125778/115477727-18065780-a234-11eb-9488-b251957101f8.png)

---
## General presentation of OpenIMSCore
### Presentation
OpenIMSCore is a project launched in 2006 to encourage the adoption of IMS (IP Multimedia Subsystem) technology in Next Generation Networks (NGN). The project was developed by FOKUS (Institute for Open Communication System), the telecommunications research and development center of the Fraunhofer Institute, based in Berlin, Germany.  
OpenIMSCore is an open source implementation of the session control functions of an IMS network core (CSCF servers) and a Home Subscriber Server (HSS), which together form the basic elements of an IMS/NGN architecture. All components are based on open source software, such as SER (SIP Express Router) or MySQL.

### Tools
#### SER 
SIP Express Router (ser) is a high-performance, configurable, free SIP ( RFC3261 ) server . It can act as registrar, proxy or redirect server. SER features an application-server interface, presence support, SMS gateway, SIMPLE2Jabber gateway, Radius/syslog accounting and authorization, server status monitoring, FCP security, etc. Web-based user provisioning, serweb, available.

Its performance allows it to deal with operational burdens, such as broken network components, attacks, power-up reboots and rapidly growing user population.

SER’s configuration ability meets needs of a whole range of scenarios including small-office use, enterprise PBX replacements and carrier services

#### MySQL
MySQL is a relational database management system (RDBMS). It is distributed under a dual GPL and proprietary license. It is one of the most widely used database management software in the world.
Since May 2009, its creator Michael Widenius has created MariaDB (Maria is the name of his second daughter) to continue its development as an open source project.

---
## Installation of IMS network core
We will use the open source implementation "Open IMS Core", developed by  FOKUS. 

In this tutorial we can use two (02) types of architecture for our servers:
- The standalone architecture (all IMS servers installed on one server)
- The distributed achitecture (a server for one IMS server)

**Note:** The distributed architecutre require more power, so be sure that you have enough. 

### Standalone installation
[Installation of IMS network core.pdf](https://github.com/leuk7/openIMSCore/files/6347737/Installation.of.IMS.network.core.pdf)

### Distributed installation
[Distributed Installation of IMS Network Core.pdf](https://github.com/leuk7/openIMSCore/files/6347738/Distributed.Installation.of.IMS.Network.Core.pdf)





