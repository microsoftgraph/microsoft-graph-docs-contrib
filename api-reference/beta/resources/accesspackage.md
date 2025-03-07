---
title: "accessPackage resource type"
description: "An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/12/2024
---

# accessPackage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package defines the collections of resource roles and the policies for how one or more users can get access to those resources.  

Each access package is referenced by a single access package catalog, and has links to the resources from that catalog via the resource-specific role scopes that define the access the package provides. An access package also links to the access package assignment policies, each of which define who can request or be assigned an access package assignment.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-accesspackageassignmentrequests.md) that references the access package and access package assignment policy.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/entitlementmanagement-list-accesspackages.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of **accesspackage** objects. |
| [Create](../api/entitlementmanagement-post-accesspackages.md) | [accessPackage](accesspackage.md) | Create a new **accesspackage** object. |
| [Get](../api/accesspackage-get.md) | [accessPackage](accesspackage.md) | Read properties and relationships of an **accesspackage** object. |
| [Update](../api/accesspackage-update.md)|None | Update the properties of an **accesspackage** object. |
| [Delete](../api/accesspackage-delete.md) |None | Delete an **accesspackage**. |
|[Filter by current user](../api/accesspackage-filterbycurrentuser.md)|[accessPackage](../resources/accesspackage.md) collection|Retrieve the list of **accessPackage** objects filtered on the signed-in user.|
|[Get applicable policy requirements](../api/accesspackage-getapplicablepolicyrequirements.md)|[accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) collection|Retrieve a list of **accessPackageAssignmentRequestRequirement** objects with request requirements. |
| [Move to catalog](../api/accesspackage-movetocatalog.md) | None | Move an access package to a different catalog.|
|**Incompatible access packages**|||
| [List](../api/accesspackage-list-incompatibleaccesspackages.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of the incompatible **accesspackage** objects for this access package. |
| [Add to](../api/accesspackage-post-incompatibleaccesspackage.md) | None | Add a link to indicate another **accesspackage** is incompatible with a specified access package. |
| [Remove from](../api/accesspackage-delete-incompatibleaccesspackage.md) | None | Remove a link that indicated an **accesspackage** was incompatible. |
| [List incompatible with](../api/accesspackage-list-accesspackagesincompatiblewith.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of the  **accesspackage** objects that list this access package as incompatible. |
|**Incompatible groups**|||
| [List](../api/accesspackage-list-incompatiblegroups.md) | [group](group.md) collection | Retrieve a list of the incompatible **group** objects for this access package. |
| [Add group to](../api/accesspackage-post-incompatiblegroup.md) | None | Add a link to indicate membership of a **group** is incompatible with a specified access package. |
| [Remove group from](../api/accesspackage-delete-incompatiblegroup.md) | None | Remove a link that indicated a **group** membership was incompatible.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|catalogId|String|Identifier of the access package catalog referencing this access package. Read-only.|
|createdBy|String|The userPrincipalName of the user or identity of the subject who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the access package.|
|displayName|String|The display name of the access package. Supports $filter (`eq`, `contains`).|
|id|String| Read-only.|
|isHidden|Boolean|Indicates whether the access package is hidden from the requestor.|
|isRoleScopesVisible|Boolean|Indicates whether role scopes are visible.|
|modifiedBy|String|The userPrincipalName of the user who last modified this resource. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageAssignmentPolicies|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection| Read-only. Nullable. Supports `$expand`.|
|accessPackageCatalog|[accessPackageCatalog](accesspackagecatalog.md)| Read-only. Nullable.|
|accessPackageResourceRoleScopes|[accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection| Nullable.|
| incompatibleAccessPackages | [accessPackage](accesspackage.md) collection | The  access packages whose assigned users are ineligible to be assigned this access package. |
| accessPackagesIncompatibleWith | [accessPackage](accesspackage.md) collection | The access packages that are incompatible with this package. Read-only. |
| incompatibleGroups | [group](group.md) collection | The groups whose members are ineligible to be assigned this access package. |


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackage",
  "keyProperty": "id"
}-->

```json
{
    "id":"360fa7de-90be-48dc-a2ce-fc40094a93dd",
    "description":"Sample access package",
    "displayName":"Access package for testing",
    "isHidden":false,
    "catalogId":"662d99e7-6ceb-4c21-9cb4-9b0bbfdefccc",
    "isRoleScopesVisible":false,
    "createdDateTime":"2019-01-27T18:19:50.74Z",
    "modifiedDateTime":"2019-01-27T18:19:50.74Z",
    "createdBy":"TestGA@example.com",
    "modifiedBy":"TestGA@example.com"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
