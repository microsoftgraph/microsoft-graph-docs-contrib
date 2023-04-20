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

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List extendRemoteHelpSessionResponses](../api/intune-remoteassistance-extendremotehelpsessionresponse-list.md)|[extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) collection|List properties and relationships of the [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) objects.|
|[Get extendRemoteHelpSessionResponse](../api/intune-remoteassistance-extendremotehelpsessionresponse-get.md)|[extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md)|Read properties and relationships of the [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) object.|
|[Create extendRemoteHelpSessionResponse](../api/intune-remoteassistance-extendremotehelpsessionresponse-create.md)|[extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md)|Create a new [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) object.|
|[Delete extendRemoteHelpSessionResponse](../api/intune-remoteassistance-extendremotehelpsessionresponse-delete.md)|None|Deletes a [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md).|
|[Update extendRemoteHelpSessionResponse](../api/intune-remoteassistance-extendremotehelpsessionresponse-update.md)|[extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md)|Update the properties of a [extendRemoteHelpSessionResponse](../resources/intune-remoteassistance-extendremotehelpsessionresponse.md) object.|

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
  "keyProperty": "id",
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
