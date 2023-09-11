---
title: "requestRemoteHelpSessionAccessResponse resource type"
description: "Remote help - response we provide back to the helper after getting response from pubSub"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# requestRemoteHelpSessionAccessResponse resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Remote help - response we provide back to the helper after getting response from pubSub

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List requestRemoteHelpSessionAccessResponses](../api/intune-remoteassistance-requestremotehelpsessionaccessresponse-list.md)|[requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) collection|List properties and relationships of the [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) objects.|
|[Get requestRemoteHelpSessionAccessResponse](../api/intune-remoteassistance-requestremotehelpsessionaccessresponse-get.md)|[requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md)|Read properties and relationships of the [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) object.|
|[Create requestRemoteHelpSessionAccessResponse](../api/intune-remoteassistance-requestremotehelpsessionaccessresponse-create.md)|[requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md)|Create a new [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) object.|
|[Delete requestRemoteHelpSessionAccessResponse](../api/intune-remoteassistance-requestremotehelpsessionaccessresponse-delete.md)|None|Deletes a [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md).|
|[Update requestRemoteHelpSessionAccessResponse](../api/intune-remoteassistance-requestremotehelpsessionaccessresponse-update.md)|[requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md)|Update the properties of a [requestRemoteHelpSessionAccessResponse](../resources/intune-remoteassistance-requestremotehelpsessionaccessresponse.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sessionKey|String|The unique identifier for a session|
|sessionType|[allowedRemoteAssistanceActions](../resources/intune-remoteassistance-allowedremoteassistanceactions.md)|Remote Help Session Type. Possible values are: `viewScreen`, `takeFullControl`, `elevation`, `unattended`, `unknownFutureValue`.|
|pubSubEncryptionKey|String|The unique identifier for encrypting client messages sent to PubSub|
|pubSubEncryption|String|AES encryption Initialization Vector for encrypting client messages sent to PubSub|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.requestRemoteHelpSessionAccessResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.requestRemoteHelpSessionAccessResponse",
  "sessionKey": "String",
  "sessionType": "String",
  "pubSubEncryptionKey": "String",
  "pubSubEncryption": "String"
}
```
