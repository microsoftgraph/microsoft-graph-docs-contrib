---
title: "entitlementManagement resource type"
description: "The singleton for containing entitlement management resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# entitlementManagement resource type

The entitlement management singleton is the container for entitlement management resources, including [accessPackageCatalog](accesspackagecatalog.md), [connectedOrganization](connectedorganization.md), and [entitlementManagementSettings](entitlementmanagementsettings.md).  For a full list of resources see [entitlement management overview](entitlementmanagement-root.md).

Inherits from [entity](entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|This value indicates the resource is a singleton. Read-only. Inherited from [entity](entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackages|[accessPackage](../resources/accesspackage.md) collection|Access packages.|
|assignmentRequests|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Access package assignment requests.|
|assignments|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|Access package assignments.|
|catalogs|[accessPackageCatalog](../resources/accesspackagecatalog.md) collection|Access package catalogs.|
|connectedOrganizations|[connectedOrganization](../resources/connectedorganization.md) collection|Connected organizations.|
|settings|[entitlementManagementSettings](../resources/entitlementmanagementsettings.md)|Entitlement management settings.|

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
  "@odata.type": "#microsoft.graph.entitlementManagement",
  "id": "String (identifier)"
}
```


