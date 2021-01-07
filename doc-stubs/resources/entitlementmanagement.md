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

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List entitlementManagements](../api/entitlementmanagement-list.md)|[entitlementManagement](../resources/entitlementmanagement.md) collection|Get a list of the [entitlementManagement](../resources/entitlementmanagement.md) objects and their properties.|
|[Create entitlementManagement](../api/entitlementmanagement-create.md)|[entitlementManagement](../resources/entitlementmanagement.md)|Create a new [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[Get entitlementManagement](../api/entitlementmanagement-get.md)|[entitlementManagement](../resources/entitlementmanagement.md)|Read the properties and relationships of an [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[Update entitlementManagement](../api/entitlementmanagement-update.md)|[entitlementManagement](../resources/entitlementmanagement.md)|Update the properties of an [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[Delete entitlementManagement](../api/entitlementmanagement-delete.md)|None|Deletes an [entitlementManagement](../resources/entitlementmanagement.md) object.|
|[List accessPackageResourceEnvironments](../api/entitlementmanagement-list-accesspackageresourceenvironments.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|Get the accessPackageResourceEnvironment resources from the accessPackageResourceEnvironments navigation property.|
|[Create accessPackageResourceEnvironment](../api/entitlementmanagement-post-accesspackageresourceenvironments.md)|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md)|Create a new accessPackageResourceEnvironment object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentPolicies|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection|**TODO: Add Description**|
|accessPackageAssignmentRequests|[accessPackageAssignmentRequest](../resources/accesspackageassignmentrequest.md) collection|**TODO: Add Description**|
|accessPackageAssignmentResourceRoles|[accessPackageAssignmentResourceRole](../resources/accesspackageassignmentresourcerole.md) collection|**TODO: Add Description**|
|accessPackageAssignments|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|**TODO: Add Description**|
|accessPackageCatalogs|[accessPackageCatalog](../resources/accesspackagecatalog.md) collection|**TODO: Add Description**|
|accessPackageResourceEnvironments|[accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) collection|**TODO: Add Description**|
|accessPackageResourceRequests|[accessPackageResourceRequest](../resources/accesspackageresourcerequest.md) collection|**TODO: Add Description**|
|accessPackageResourceRoleScopes|[accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) collection|**TODO: Add Description**|
|accessPackageResources|[accessPackageResource](../resources/accesspackageresource.md) collection|**TODO: Add Description**|
|accessPackages|[accessPackage](../resources/accesspackage.md) collection|**TODO: Add Description**|
|connectedOrganizations|[connectedOrganization](../resources/connectedorganization.md) collection|**TODO: Add Description**|
|settings|[entitlementManagementSettings](../resources/entitlementmanagementsettings.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entitlementManagement",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entitlementManagement",
  "id": "String (identifier)"
}
```

