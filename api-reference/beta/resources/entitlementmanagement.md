---
title: "entitlementManagement resource type"
description: "The container for entitlement management resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# entitlementManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The entitlement management singleton is the container for entitlement management resources, including [accessPackageCatalog](accesspackagecatalog.md), [connectedOrganization](connectedorganization.md), and [entitlementManagementSettings](entitlementmanagementsettings.md).  For a full list of resources see [entitlement management overview](entitlementmanagement-overview.md).

Inherits from [entity](entity.md).

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentPolicies|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection| Represents the policy that governs which subjects can request or be assigned an access package via an access package assignment. |
|accessPackageAssignmentRequests|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Represents access package assignment requests created by or on behalf of a user. **DO NOT USE. TO BE RETIRED SOON. Use the **assignmentRequests** relationship instead.**|
|accessPackageAssignmentResourceRoles|[accessPackageAssignmentResourceRole](../resources/accesspackageassignmentresourcerole.md) collection| Represents the resource-specific role which a subject has been assigned through an access package assignment.|
|accessPackageAssignments|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|The assignment of an access package to a subject for a period of time.|
|accessPackageCatalogs|[accessPackageCatalog](../resources/accesspackagecatalog.md) collection|A container of access packages.|
|accessPackageResourceEnvironments|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection| A reference to the geolocation environment in which a resource is located.|
|accessPackageResourceRequests|[accessPackageResourceRequest](../resources/accesspackageresourcerequest.md) collection|Represents a request to add or remove a resource to or from a catalog respectively. |
|accessPackageResourceRoleScopes|[accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) collection| A reference to both a scope within a resource, and a role in that resource for that scope. |
|accessPackageResources|[accessPackageResource](../resources/accesspackageresource.md) collection| A reference to a resource associated with an access package catalog.|
|accessPackages|[accessPackage](../resources/accesspackage.md) collection|Represents access package objects.|
|assignmentRequests|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Represents access package assignment requests created by or on behalf of a user.|
|connectedOrganizations|[connectedOrganization](../resources/connectedorganization.md) collection|Represents references to a directory or domain of another organization whose users can request access.|
|settings|[entitlementManagementSettings](../resources/entitlementmanagementsettings.md)|Represents the settings that control the behavior of Microsoft Entra entitlement management.|
|subjects|[accessPackageSubject](../resources/accesspackagesubject.md)|Represents the subjects within entitlement management.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entitlementManagement",
  "openType": false,
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entitlementManagement",
  "id": "String (identifier)"
}
```
