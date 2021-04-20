# openIMSCore School Project
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
- IMMGW (IP MultiMedia Gateway)
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
