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

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List createRemoteHelpSessionResponses](../api/intune-remoteassistance-createremotehelpsessionresponse-list.md)|[createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) collection|List properties and relationships of the [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) objects.|
|[Get createRemoteHelpSessionResponse](../api/intune-remoteassistance-createremotehelpsessionresponse-get.md)|[createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md)|Read properties and relationships of the [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) object.|
|[Create createRemoteHelpSessionResponse](../api/intune-remoteassistance-createremotehelpsessionresponse-create.md)|[createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md)|Create a new [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) object.|
|[Delete createRemoteHelpSessionResponse](../api/intune-remoteassistance-createremotehelpsessionresponse-delete.md)|None|Deletes a [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md).|
|[Update createRemoteHelpSessionResponse](../api/intune-remoteassistance-createremotehelpsessionresponse-update.md)|[createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md)|Update the properties of a [createRemoteHelpSessionResponse](../resources/intune-remoteassistance-createremotehelpsessionresponse.md) object.|

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
  "keyProperty": "id",
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
