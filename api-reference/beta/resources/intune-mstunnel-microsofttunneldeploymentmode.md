---
title: "microsoftTunnelDeploymentMode enum type"
description: "The available deployment modes for a managed Tunnel server. The deployment mode is determined during the deployment depending on the Tunnel containers, namely standalone or as part of a pod, and whether the containers are running in rootful or rootless mode."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# microsoftTunnelDeploymentMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The available deployment modes for a managed Tunnel server. The deployment mode is determined during the deployment depending on the Tunnel containers, namely standalone or as part of a pod, and whether the containers are running in rootful or rootless mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|standaloneRootful|0|Default. Indicates that the Tunnel containers are deployed standalone and in rootful mode.|
|standaloneRootless|1|Indicates that the Tunnel containers are deployed standalone and in rootless mode.|
|podRootful|2|Indicates that the Tunnel containers are deployed as part of a pod and in rootful mode.|
|podRootless|3|Indicates that the Tunnel containers are deployed as part of a pod and in rootless mode.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
