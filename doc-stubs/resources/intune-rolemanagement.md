---
title: "roleManagement resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# roleManagement resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get roleManagement](../api/intune-rolemanagement-get.md)|[roleManagement](../resources/intune-rolemanagement.md)|Read the properties and relationships of a [roleManagement](../resources/intune-rolemanagement.md) object.|
|[Update roleManagement](../api/intune-rolemanagement-update.md)|[roleManagement](../resources/intune-rolemanagement.md)|Update the properties of a [roleManagement](../resources/intune-rolemanagement.md) object.|
|[List rbacApplication](../api/intune-rolemanagement-list-entitlementmanagement.md)|[rbacApplication](../resources/rbacapplication.md) collection|Get the rbacApplication resources from the entitlementManagement navigation property.|
|[Create rbacApplication](../api/intune-rolemanagement-post-entitlementmanagement.md)|[rbacApplication](../resources/rbacapplication.md)|Create a new rbacApplication object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceManagement|[rbacApplicationMultiple](../resources/rbacapplicationmultiple.md)|**TODO: Add Description**|
|directory|[rbacApplication](../resources/rbacapplication.md)|**TODO: Add Description**|
|entitlementManagement|[rbacApplication](../resources/rbacapplication.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleManagement"
}
```

