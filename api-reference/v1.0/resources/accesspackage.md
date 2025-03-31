---
title: "accessPackage resource type"
description: "An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/15/2024
---
# accessPackage resource type

Namespace: microsoft.graph

In [Microsoft Entra Entitlement Management](entitlementmanagement-overview.md), an access package defines the collections of resource roles and the policies for how one or more users can get access to those resources.  

Each access package is referenced by a single access package catalog, and has links to the resources from that catalog via the resource-specific role scopes that define the access the package provides. An access package also links to the access package assignment policies, each of which define who can request or be assigned an access package assignment.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-accesspackages.md)|[accessPackage](accesspackage.md) collection|Retrieve a list of **accesspackage** objects. |
|[Create](../api/entitlementmanagement-post-accesspackages.md)|[accessPackage](accesspackage.md)|Create a new **accesspackage** object. |
|[Get](../api/accesspackage-get.md)|[accessPackage](accesspackage.md)|Read properties and relationships of an **accesspackage** object. |
|[Update](../api/accesspackage-update.md)|None|Update the properties of an **accesspackage** object. |
|[Delete](../api/accesspackage-delete.md)|None|Delete an **accesspackage**. |
|[Filter by current user](../api/accesspackage-filterbycurrentuser.md)|[accessPackage](../resources/accesspackage.md) collection|Retrieve the list of **accessPackage** objects filtered on the signed-in user.|
|[Get applicable policy requirements](../api/accesspackage-getapplicablepolicyrequirements.md)|[accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) collection|Retrieve a list of **accessPackageAssignmentRequestRequirement** objects with request requirements. |
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
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the access package.|
|displayName|String|Required. The display name of the access package. Supports $filter (`eq`, `contains`).|
|id|String|Read-only.|
|isHidden|Boolean|Indicates whether the access package is hidden from the requestor.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackagesIncompatibleWith | [accessPackage](accesspackage.md) collection | The access packages that are incompatible with this package. Read-only. |
|assignmentPolicies|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection|Read-only. Nullable. Supports `$expand`.|
|catalog|[accessPackageCatalog](../resources/accesspackagecatalog.md)|Required when creating the access package. Read-only. Nullable.|
|incompatibleAccessPackages | [accessPackage](accesspackage.md) collection | The access packages whose assigned users are ineligible to be assigned this access package. |
|incompatibleGroups | [group](group.md) collection | The groups whose members are ineligible to be assigned this access package. |
|resourceRoleScopes| [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | The resource roles and scopes in this access package. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackage",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String", 
  "id": "String (identifier)",
  "isHidden": "Boolean",
  "modifiedDateTime": "String (timestamp)"
}
```
