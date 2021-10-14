---
title: "remoteAssistanceSettings resource type"
description: "Remote assistance settings for the account"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# remoteAssistanceSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Remote assistance settings for the account

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get remoteAssistanceSettings](../api/intune-remoteassistance-remoteassistancesettings-get.md)|[remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md)|Read properties and relationships of the [remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md) object.|
|[Update remoteAssistanceSettings](../api/intune-remoteassistance-remoteassistancesettings-update.md)|[remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md)|Update the properties of a [remoteAssistanceSettings](../resources/intune-remoteassistance-remoteassistancesettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The remote assistance settings identifier|
|remoteAssistanceState|[remoteAssistanceState](../resources/intune-remoteassistance-remoteassistancestate.md)|The current state of remote assistance for the account. Possible values are: notConfigured, disabled, enabled. This setting is configurable by the admin. Remote assistance settings that have not yet been configured by the admin have a notConfigured state. Returned by default. Possible values are: `notConfigured`, `disabled`, `enabled`.|
|allowSessionsToUnenrolledDevices|Boolean| Indicates if sessions to unenrolled devices are allowed for the account. This setting is configurable by the admin. Default value is false.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.remoteAssistanceSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.remoteAssistanceSettings",
  "id": "String (identifier)",
  "remoteAssistanceState": "String",
  "allowSessionsToUnenrolledDevices": true
}
```



