---
title: "remoteHelpSessionStatusDetail resource type"
description: "The current status of the Remote Help Session."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# remoteHelpSessionStatusDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The current status of the Remote Help Session.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sessionState|[remoteHelpSessionState](../resources/intune-remoteassistance-remotehelpsessionstate.md)|The current session state of the Remote Help Session. Possible values are: `none`, `initiated`, `pendingAssignment`, `ready`, `active`, `disconnected`, `failed`, `unknownFutureValue`.|
|errorCode|[remoteHelpSessionErrorCode](../resources/intune-remoteassistance-remotehelpsessionerrorcode.md)|The error code of the Remote Help Session, if the session state is failed. Possible values are: `unknownError`, `avdAgentNotFound`, `avdAgentInDifferentHostPool`, `rdpDisabled`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.remoteHelpSessionStatusDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.remoteHelpSessionStatusDetail",
  "sessionState": "String",
  "errorCode": "String"
}
```