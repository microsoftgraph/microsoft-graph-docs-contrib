---
title: "remoteAssistanceSessionType enum type"
description: "Type of the remote assist session that was held. Possible values are: `viewOnly`, `fullControl`"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: enumPageType
---

# remoteAssistanceSessionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of the remote assist session that was held. Possible values are: `viewOnly`, `fullControl`

## Members
|Member|Value|Description|
|:---|:---|:---|
|viewOnly|0|This status denotes a view only session between helper and sharer.|
|fullControl|1|This status denotes a session where helper was able to take full control of the sharer's device.|
|elevation|2|This status denotes a session where helper was able to take administrative actions on the sharer's device.|



