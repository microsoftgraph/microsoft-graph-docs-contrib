---
title: "mobileAppManagementPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# mobileAppManagementPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-mobileappmanagementpolicies.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) collection|Get a list of the mobileAppManagementPolicy objects and their properties.|
|[Create](../api/policyroot-post-mobileappmanagementpolicies.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Create a new mobileAppManagementPolicy object.|
|[Get](../api/mobileappmanagementpolicy-get.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Read the properties and relationships of [mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md) object.|
|[Update](../api/mobileappmanagementpolicy-update.md)|[mobileAppManagementPolicy](../resources/mobileappmanagementpolicy.md)|Update the properties of a mobileAppManagementPolicy object.|
|[Delete](../api/policyroot-delete-mobileappmanagementpolicies.md)|None|Delete a mobileAppManagementPolicy object.|
|[List includedGroups](../api/mobileappmanagementpolicy-list-includedgroups.md)|[group](../resources/group.md) collection|**TODO: Add a useful description.**|
|[Add group](../api/mobileappmanagementpolicy-post-includedgroups.md)|[group](../resources/group.md)|Add includedGroups by posting to the includedGroups collection.|
|[Remove includedGroups](../api/mobileappmanagementpolicy-delete-includedgroups.md)|None|Remove a [group](../resources/group.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesTo|policyScope|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md). The possible values are: `none`, `all`, `selected`, `unknownFutureValue`.|
|complianceUrl|String|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|description|String|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|discoveryUrl|String|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|displayName|String|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isValid|Boolean|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|
|termsOfUseUrl|String|**TODO: Add Description** Inherited from [mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includedGroups|[group](../resources/group.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppManagementPolicy",
  "baseType": "microsoft.graph.mobilityManagementPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppManagementPolicy",
  "id": "String (identifier)",
  "appliesTo": "String",
  "complianceUrl": "String",
  "description": "String",
  "discoveryUrl": "String",
  "displayName": "String",
  "termsOfUseUrl": "String",
  "isValid": "Boolean"
}
```

