---
title: "copilotAdminLimitedMode resource type"
description: "Represents a setting that controls whether Microsoft 365 Copilot users can receive responses to sentiment-related prompts."
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
---

# copilotAdminLimitedMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a setting that controls whether Microsoft 365 Copilot in Teams Meetings users can receive responses to sentiment-related prompts. If this setting is enabled, Copilot doesn't respond to sentiment-related prompts and questions asked by the user. If the setting is disabled, Copilot responds to sentiment-related prompts and questions asked by the user. Copilot in Microsoft Teams currently honors this setting. By default, the setting is disabled.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/copilotadminlimitedmode-get.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Read the properties and relationships of a copilotAdminLimitedMode object.|
|[Update](../api/copilotadminlimitedmode-update.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Update the properties of a copilotAdminLimitedMode object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledForGroup|Boolean|Enables the user to be in limited mode for Copilot in Teams meetings. When `copilotAdminLimitedMode=true`, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When `copilotAdminLimitedMode=false`, it responds to any types of questions grounded to the meeting conversation. The default value is false.|
|groupId|String|The ID of a Microsoft Entra group to which the value of the **isEnabledForGroup** property is applied value. The default value is `null`. This parameter is optional. If **isEnabledForGroup** is set to `true`, the **groupId** value must be provided in order for Copilot limited mode in Teams Meetings to be enabled for the members of the group. |

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
  "isEnabledForGroup": "Boolean",
  "groupId": "String"
}
```

