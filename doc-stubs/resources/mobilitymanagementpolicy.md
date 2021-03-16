---
title: "mobilityManagementPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mobilityManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mobilityManagementPolicies](../api/mobilitymanagementpolicy-list.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) collection|Get a list of the [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) objects and their properties.|
|[Create mobilityManagementPolicy](../api/mobilitymanagementpolicy-post-mobilitymanagementpolicies.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|Create a new [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.|
|[Get mobilityManagementPolicy](../api/mobilitymanagementpolicy-get.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|Read the properties and relationships of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.|
|[Update mobilityManagementPolicy](../api/mobilitymanagementpolicy-update.md)|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|Update the properties of a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.|
|[Delete mobilityManagementPolicy](../api/mobilitymanagementpolicy-delete.md)|None|Deletes a [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) object.|
|[List includedGroups](../api/mobilitymanagementpolicy-list-includedgroups.md)|[group](../resources/group.md) collection|Get the group resources from the includedGroups navigation property.|
|[Add group](../api/mobilitymanagementpolicy-post-includedgroups.md)|[group](../resources/group.md)|Add includedGroups by posting to the includedGroups collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|**TODO: Add Description**. Possible values are: `none`, `all`, `selected`, `unknownFutureValue`.|
|complianceUrl|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|discoveryUrl|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|termsOfUseUrl|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobilityManagementPolicy",
  "id": "String (identifier)",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "termsOfUseUrl": "String"
}
```

