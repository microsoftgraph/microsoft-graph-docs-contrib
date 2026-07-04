---
title: "entitlementManagement resource type"
description: "The container for entitlement management resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# entitlementManagement resource type

Namespace: microsoft.graph

The entitlement management singleton is the container for entitlement management resources, including [accessPackageCatalog](../resources/accesspackagecatalog.md), [connectedOrganization](../resources/connectedorganization.md), and [entitlementManagementSettings](../resources/entitlementmanagementsettings.md). For a full list of resources, see [entitlement management overview](../resources/entitlementmanagement-overview.md).

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|This value indicates the resource is a singleton. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentApprovals|[approval](../resources/approval.md) collection | Approval stages for decisions associated with access package assignment requests.|
|accessPackages|[accessPackage](../resources/accesspackage.md) collection|Access packages define the collection of resource roles and the policies for which subjects can request or be assigned access to those resources.|
|accessPackageSuggestions|[accessPackageSuggestion](../resources/accesspackagesuggestion.md) collection|Suggested access packages for end users based on various criteria such as related people insights and assignment history.|
|availableAccessPackages|[availableAccessPackage](../resources/availableaccesspackage.md) collection|Access packages available for end users to browse and request.|
|assignmentPolicies|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection|Access package assignment policies govern which subjects can request or be assigned an access package via an access package assignment.|
|assignmentRequests|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|Access package assignment requests created by or on behalf of a subject.|
|assignments|[accessPackageAssignment](../resources/accesspackageassignment.md) collection| The assignment of an access package to a subject for a period of time.|
|catalogs|[accessPackageCatalog](../resources/accesspackagecatalog.md) collection|A container for access packages.|
|connectedOrganizations|[connectedOrganization](../resources/connectedorganization.md) collection|References to a directory or domain of another organization whose users can request access.|
|controlConfigurations|[controlConfiguration](../resources/controlconfiguration.md) collection|Configuration settings that control the lifecycle and access policies of entitlement management within a tenant.|
|resourceEnvironments|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection| A reference to the geolocation environments in which a resource is located.|
|resourceRequests|[accessPackageResourceRequest](../resources/accesspackageresourcerequest.md) collection|Represents a request to add or remove a resource to or from a catalog respectively. |
|resources|[accessPackageResource](../resources/accesspackageresource.md) collection|The resources associated with the catalogs. |
|settings|[entitlementManagementSettings](../resources/entitlementmanagementsettings.md)| The settings that control the behavior of Microsoft Entra entitlement management.|

## JSON representation
The following JSON representation shows the resource type.
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
