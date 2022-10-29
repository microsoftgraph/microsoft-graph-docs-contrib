---
title: "accessPackage resource type"
description: "An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackage resource type

Namespace: microsoft.graph

In [Azure AD Entitlement Management](entitlementmanagement-overview.md), an access package defines the collections of resource roles and the policies for how one or more users can get access to those resources.  

Each access package is referenced by a single access package catalog, and has links to the resources from that catalog via the resource-specific role scopes that define the access the package provides.  An access package also links to the access package assignment policies, each of which define who can request or be assigned an access package assignment.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackages](../api/entitlementmanagement-list-accesspackages.md)|[accessPackage](accesspackage.md) collection|Retrieve a list of **accesspackage** objects. |
|[Create accessPackage](../api/entitlementmanagement-post-accesspackages.md)|[accessPackage](accesspackage.md)|Create a new **accesspackage** object. |
|[Get accessPackage](../api/accesspackage-get.md)|[accessPackage](accesspackage.md)|Read properties and relationships of an **accesspackage** object. |
|[Update accessPackage](../api/accesspackage-update.md)|None|Update the properties of an **accesspackage** object. |
|[Delete accessPackage](../api/accesspackage-delete.md)|None|Delete an **accesspackage**. |
| [List incompatibleAccessPackages](../api/accesspackage-list-incompatibleaccesspackages.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of the incompatible **accesspackage** objects for this access package. |
| [Add accessPackage to incompatibleAccessPackages](../api/accesspackage-post-incompatibleaccesspackage.md) | None | Add a link to indicate another **accesspackage** is incompatible with a specified access package. |
| [Remove accessPackage from incompatibleAccessPackages](../api/accesspackage-delete-incompatibleaccesspackage.md) | None | Remove a link that indicated an **accesspackage** was incompatible. |
| [List incompatibleGroups](../api/accesspackage-list-incompatiblegroups.md) | [group](group.md) collection | Retrieve a list of the incompatible **group** objects for this access package. |
| [Add group to incompatibleGroups](../api/accesspackage-post-incompatiblegroup.md) | None | Add a link to indicate membership of a **group** is incompatible with a specified access package. |
| [Remove group from incompatibleGroups](../api/accesspackage-delete-incompatiblegroup.md) | None | Remove a link that indicated a **group** membership was incompatible.|
| [List accessPackagesIncompatibleWith](../api/accesspackage-list-accesspackagesincompatiblewith.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of the  **accesspackage** objects which list this access package as incompatible. |
|[filterByCurrentUser](../api/accesspackage-filterbycurrentuser.md)|[accessPackage](../resources/accesspackage.md) collection|Retrieve the list of **accessPackage** objects filtered on the signed-in user.|
|[getApplicablePolicyRequirements](../api/accesspackage-getapplicablepolicyrequirements.md)|[accessPackageAssignmentRequestRequirements](../resources/accesspackageassignmentrequestrequirements.md) collection|Retrieve a list of **accessPackageAssignmentRequestRequirement** objects with request requirements. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the access package.|
|displayName|String|The display name of the access package. Supports $filter (`eq`, `contains`).|
|id|String|Read-only.|
|isHidden|Boolean|Whether the access package is hidden from the requestor.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackagesIncompatibleWith | [accessPackage](accesspackage.md) collection | The access packages that are incompatible with this package. Read-only. |
|assignmentPolicies|[accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md) collection|Read-only. Nullable.|
|catalog|[accessPackageCatalog](../resources/accesspackagecatalog.md)|Read-only. Nullable.|
|incompatibleAccessPackages | [accessPackage](accesspackage.md) collection | The access packages whose assigned users are ineligible to be assigned this access package. |
|incompatibleGroups | [group](group.md) collection | The groups whose members are ineligible to be assigned this access package. |

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "isHidden": "Boolean",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```


