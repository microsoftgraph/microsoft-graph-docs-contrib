---
title: "createRemoteHelpSessionResponse resource type"
description: "Remote help - response we provide back to the helper after successfully creating an ACS session"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# createRemoteHelpSessionResponse resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Remote help - response we provide back to the helper after successfully creating an ACS session

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|sessionType|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)|Remote Help Session Type. Possible values are: `viewScreen`, `takeFullControl`, `elevation`, `unattended`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.createRemoteHelpSessionResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.createRemoteHelpSessionResponse",
  "sessionKey": "String",
  "sessionType": "String"
}
```
