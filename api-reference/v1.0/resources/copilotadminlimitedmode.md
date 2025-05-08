---
title: "copilotAdminLimitedMode resource type"
description: "Represents a setting that controls whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
ms.date: 05/08/2025
---

# copilotAdminLimitedMode resource type

Namespace: microsoft.graph

Represents a setting that controls whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts. When this setting is enabled, Copilot in Teams meetings doesn't respond to sentiment-related prompts and questions from the user. When disabled, it responds to them. Copilot in Teams meetings currently honors this setting. By default, the setting is disabled.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/copilotadminlimitedmode-get.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Read the properties and relationships of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.|
|[Update](../api/copilotadminlimitedmode-update.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Update the properties of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The ID of a Microsoft Entra group, for which the value of **isEnabledForGroup** is applied. The default value is `null`. If **isEnabledForGroup** is set to `true`, the **groupId** value must be provided for the Copilot limited mode in Teams meetings to be enabled for the members of the group. Optional. |
|isEnabledForGroup|Boolean|Enables the user to be in limited mode for Copilot in Teams meetings. When `copilotAdminLimitedMode=true`, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When `copilotAdminLimitedMode=false`, it responds to all types of questions grounded to the meeting conversation. The default value is `false`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.copilotAdminLimitedMode",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.copilotAdminLimitedMode",
  "groupId": "String",
  "isEnabledForGroup": "Boolean"
}
```

