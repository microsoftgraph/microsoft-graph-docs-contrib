---
author: "jaiprakashmb"
ms.localizationpriority: high
ms.subservice: intune
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

| Request type | Limit per tenant for all apps | Limit per app per tenant |
| ------------ | ----------------------------- | ------------------------ |
| POST, PUT, DELETE, PATCH | 200 requests per 20 seconds | 100 requests per 20 seconds |
| Any | 2000 requests per 20 seconds | 1000 requests per 20 seconds |

The preceding limits apply to the following resources:  

| <!-- fake header--> |
|---|
| <ul> <li> [microsoftTunnelConfiguration](/graph/api/resources/intune-mstunnel-microsofttunnelconfiguration) <li> [microsoftTunnelHealthThreshold](/graph/api/resources/intune-mstunnel-microsofttunnelhealththreshold) <li> [microsoftTunnelServer](/graph/api/resources/intune-mstunnel-microsofttunnelserver) <li> [microsoftTunnelServerLogCollectionResponse](/graph/api/resources/intune-mstunnel-microsofttunnelserverlogcollectionresponse) <li> [microsoftTunnelSite](/graph/api/resources/intune-mstunnel-microsofttunnelsite) </ul> |
