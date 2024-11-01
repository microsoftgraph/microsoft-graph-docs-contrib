---
title: "copilotAdminLimitedMode resource type"
description: "Navigation property for using `copilotAdminLimitedMode` GET and PATCH methods"
author: "gautamjain14"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
---

# copilotAdminLimitedMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

LimitedMode copilot setting value controls whether Microsoft 365 Copilot users can receive responses to sentiment-related prompts. If this setting is enabled, Copilot doesn't respond to sentiment-related prompts and questions asked by the user. If the setting is disabled, Copilot responds to sentiment-related prompts and questions asked by the user. In the initial version, this setting is honored by Teams Copilot and eventually all M365 Copilots will be honoring this setting. The default value is disabled.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/copilotadminlimitedmode-get.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Read the properties and relationships of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.|
|[Update](../api/copilotadminlimitedmode-update.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Update the properties of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledForGroup|BooleanEnables the user to be in limited mode for Copilot in Teams meetings. When copilotLimitedMode=true, users in this mode can ask any questions, but Copilot doesn't respond to certain questions related to inferring emotions, behavior, or judgments. When copilotLimitedMode=false, the current mode for Copilot, it responds to any types of questions grounded to the meeting conversation. The default value is false.|
|groupId|String|The ID of a Microsoft Entra group, of which the value of isEnabledForGroup is applied value for its members. The default value is null. This parameter is optional. If isEnabledForGroup is set to true, groupId value must be provided and copilot limited mode is enabled for the members of the group|

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

