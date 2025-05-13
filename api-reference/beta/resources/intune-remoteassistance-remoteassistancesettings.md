---
title: "remoteAssistanceSettings resource type"
description: "Remote assistance settings for the account"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# remoteAssistanceSettings resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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
|remoteAssistanceState|[remoteAssistanceState](../resources/intune-remoteassistance-remoteassistancestate.md)|The current state of remote assistance for the account. Possible values are: disabled, enabled. This setting is configurable by the admin. Remote assistance settings that have not yet been configured by the admin have a disabled state. Returned by default. Possible values are: `disabled`, `enabled`.|
|allowSessionsToUnenrolledDevices|Boolean| Indicates if sessions to unenrolled devices are allowed for the account. This setting is configurable by the admin. Default value is false.|
|blockChat|Boolean| Indicates if sessions to block chat function. This setting is configurable by the admin. Default value is false.|

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
  "allowSessionsToUnenrolledDevices": true,
  "blockChat": true
}
```