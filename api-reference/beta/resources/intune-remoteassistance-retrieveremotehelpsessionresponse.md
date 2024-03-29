---
title: "retrieveRemoteHelpSessionResponse resource type"
description: "Remote help - response we provide back to the helper on retrieve session API call"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# retrieveRemoteHelpSessionResponse resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Remote help - response we provide back to the helper on retrieve session API call

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|acsHelperUserToken|String|Helper ACS User Token|
|acsHelperUserId|String|Helper ACS User Id|
|acsSharerUserId|String|Sharer ACS User Id|
|acsGroupId|String|ACS Group Id|
|sessionType|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)|Remote Help Session Type. Possible values are: `viewScreen`, `takeFullControl`, `elevation`, `unattended`, `unknownFutureValue`.|
|deviceName|String|Android Device Name|
|pubSubGroupId|String|Azure Pubsub Group Id|
|pubSubHelperAccessUri|String|Azure Pubsub Group Id|
|sessionExpirationDateTime|DateTimeOffset|Azure Pubsub Session Expiration Date Time.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.retrieveRemoteHelpSessionResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.retrieveRemoteHelpSessionResponse",
  "sessionKey": "String",
  "acsHelperUserToken": "String",
  "acsHelperUserId": "String",
  "acsSharerUserId": "String",
  "acsGroupId": "String",
  "sessionType": "String",
  "deviceName": "String",
  "pubSubGroupId": "String",
  "pubSubHelperAccessUri": "String",
  "sessionExpirationDateTime": "String (timestamp)"
}
```
