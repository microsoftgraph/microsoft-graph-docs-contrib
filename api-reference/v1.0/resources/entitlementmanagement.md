---
title: "entitlementManagement resource type"
description: "The container for entitlement management resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# entitlementManagement resource type

The entitlement management singleton is the container for entitlement management resources, including [accessPackageCatalog](accesspackagecatalog.md), [connectedOrganization](connectedorganization.md), and [entitlementManagementSettings](entitlementmanagementsettings.md).  For a full list of resources see [entitlement management overview](entitlementmanagement-overview.md).

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
|accessPackageAssignmentApprovals|[approval](../resources/approval.md) collection | Approval stages for decisions associated with access package assignment requests.|
|accessPackages|[accessPackage](../resources/accesspackage.md) collection|Access packages define the collection of resource roles and the policies for which subjects can request or be assigned access to those resources.|
|assignmentPolicies|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection|Access package assignment policies govern which subjects can request or be assigned an access package via an access package assignment.|
|assignmentRequests|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Access package assignment requests created by or on behalf of a subject.|
|assignments|[accessPackageAssignment](../resources/accesspackageassignment.md) collection| The assignment of an access package to a subject for a period of time.|
|catalogs|[accessPackageCatalog](../resources/accesspackagecatalog.md) collection|A container for access packages.|
|connectedOrganizations|[connectedOrganization](../resources/connectedorganization.md) collection|References to a directory or domain of another organization whose users can request access.|
|settings|[entitlementManagementSettings](../resources/entitlementmanagementsettings.md)| The settings that control the behavior of Azure AD entitlement management.|

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


