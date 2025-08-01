---
title: "microsoftTunnelDeploymentMode enum type"
description: "The available deployment modes for a managed Tunnel server. The deployment mode is determined during the deployment depending on the Tunnel containers, namely standalone or as part of a pod, and whether the containers are running in rootful or rootless mode."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# microsoftTunnelDeploymentMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The available deployment modes for a managed Tunnel server. The deployment mode is determined during the deployment depending on the Tunnel containers, namely standalone or as part of a pod, and whether the containers are running in rootful or rootless mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|standaloneRootful|0||
|standaloneRootless|1||
|podRootful|2||
|podRootless|3||
|unknownFutureValue|4||