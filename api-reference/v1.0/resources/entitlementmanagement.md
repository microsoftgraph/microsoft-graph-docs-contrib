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

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackages](../api/entitlementmanagement-list-accesspackages.md)|[accessPackage](../resources/accesspackage.md) collection|List the access packages.|
|[Create accessPackage](../api/entitlementmanagement-post-accesspackages.md)|[accessPackage](../resources/accesspackage.md)|Create a new access package.|
|[List assignmentRequests](../api/entitlementmanagement-list-assignmentrequests.md)|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|List the access package assignment requests.|
|[List assignments](../api/entitlementmanagement-list-assignments.md)|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|List the access package assignments.|
|[List catalogs](../api/entitlementmanagement-list-catalogs.md)|[accessPackageCatalog](../resources/accesspackagecatalog.md) collection|List the access package catalogs.|
|[Create accessPackageCatalog](../api/entitlementmanagement-post-catalogs.md)|[accessPackageCatalog](../resources/accesspackagecatalog.md)|Create a new accessPackageCatalog object.|
|[List connectedOrganizations](../api/entitlementmanagement-list-connectedorganizations.md)|[connectedOrganization](../resources/connectedorganization.md) collection|List the connected organizations.|
|[Create connectedOrganization](../api/entitlementmanagement-post-connectedorganizations.md)|[connectedOrganization](../resources/connectedorganization.md)|Create a new connectedOrganization object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|This value indicates the resource is a singleton. Read-only.|

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


