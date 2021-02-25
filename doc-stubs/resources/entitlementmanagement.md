---
title: "entitlementManagement resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# entitlementManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List entitlementManagements](../api/entitlementmanagement-list.md)|[entitlementManagement](../resources/entitlementmanagement.md) collection|Get a list of the [entitlementManagement](../resources/entitlementmanagement.md) objects and their properties.|
|[Create entitlementManagement](../api/entitlementmanagement-create.md)|[entitlementManagement](../resources/entitlementmanagement.md)|Create a new [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[Get entitlementManagement](../api/entitlementmanagement-get.md)|[entitlementManagement](../resources/entitlementmanagement.md)|Read the properties and relationships of an [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[Update entitlementManagement](../api/entitlementmanagement-update.md)|[entitlementManagement](../resources/entitlementmanagement.md)|Update the properties of an [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[Delete entitlementManagement](../api/entitlementmanagement-delete.md)|None|Deletes an [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[List accessPackageAssignmentApprovals](../api/entitlementmanagement-list-accesspackageassignmentapprovals.md)|[approval](../resources/approval.md) collection|Get the approval resources from the accessPackageAssignmentApprovals navigation property.|
|[Create approval](../api/entitlementmanagement-post-accesspackageassignmentapprovals.md)|[approval](../resources/approval.md)|Create a new approval object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentApprovals|[approval](../resources/approval.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entitlementManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entitlementManagement"
}
```

