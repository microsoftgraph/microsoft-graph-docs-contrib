---
title: "extendRemoteHelpSessionResponse resource type"
description: "Remote help - response we provide back to the helper after getting response from pubSub"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# extendRemoteHelpSessionResponse resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Remote help - response we provide back to the helper after getting response from pubSub

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|acsHelperUserToken|String|Helper ACS User Token|
|pubSubHelperAccessUri|String|Azure Pubsub Group Id|
|sessionExpirationDateTime|DateTimeOffset|Azure Pubsub Session Expiration Date Time.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.extendRemoteHelpSessionResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.extendRemoteHelpSessionResponse",
  "sessionKey": "String",
  "acsHelperUserToken": "String",
  "pubSubHelperAccessUri": "String",
  "sessionExpirationDateTime": "String (timestamp)"
}
```
