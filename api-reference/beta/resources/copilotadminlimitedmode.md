---
title: "copilotAdminLimitedMode resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# copilotAdminLimitedMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/copilotadminlimitedmode-get.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Read the properties and relationships of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.|
|[Update](../api/copilotadminlimitedmode-update.md)|[copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md)|Update the properties of a [copilotAdminLimitedMode](../resources/copilotadminlimitedmode.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledForGroup|Boolean|Use this to set whether user should be in limited mode for Copilot in Teams Meetings. When copilotLimitedMode=true, users in this mode can ask any questions, but Copilot will not respond to certain questions related to inferring emotions, behavior, judgements. When copilotLimitedMode=false, this is current mode for Copilot, and it will respond to any types of questions grounded to the meeting conversation. Default value is false.|
|groupId|String|The ID of a Microsoft Entra group, of which the value of isEnabledForGroup is applied value for its members. The default value is null. This parameter is optional. If isEnabledForGroup is set to true, groupId value must be provided and copilot limited mode is enabled to the members of the group|

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

