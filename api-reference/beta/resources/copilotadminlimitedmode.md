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
|isEnabledForGroup|Boolean|Indicates the state of copilot limited mode. When true, copilotLimitedMode is enabled and Copilot will not respond to sentiment-related prompts and questions asked by the user. When false, copilotLimitedMode is disabled and Copilot will respond to sentiment-related prompts and questions asked by the user. Default value is false.|
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

