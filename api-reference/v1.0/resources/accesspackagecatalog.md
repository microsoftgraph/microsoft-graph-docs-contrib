---
title: "accessPackageCatalog resource type"
description: "An access package catalog is a container for access packages."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---
# accessPackageCatalog resource type

Namespace: microsoft.graph


In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package catalog is a container for zero or more access packages. Microsoft Entra entitlement management includes a built-in catalog named **General**.

An access package catalog might also have linked resources that are used in those access packages to provide access. To view or change the membership of catalog-scoped roles, use the [role assignments](unifiedroleassignment.md) API with the entitlement management RBAC provider.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entitlementmanagement-list-catalogs.md)|[accessPackageCatalog](accesspackagecatalog.md) collection|Retrieve a list of accessPackageCatalog objects. |
|[Create](../api/entitlementmanagement-post-catalogs.md)|[accessPackageCatalog](accesspackagecatalog.md)|Create a new accessPackageCatalog object. |
|[Get](../api/accesspackagecatalog-get.md)|[accessPackageCatalog](accesspackagecatalog.md)|Read properties and relationships of an accessPackageCatalog object. |
|[Update](../api/accesspackagecatalog-update.md)|None|Update the properties of an accessPackageCatalog object. |
|[Delete](../api/accesspackagecatalog-delete.md)|None|Delete accessPackageCatalog. |
| **Access package catalog resources**| | |
| [List](../api/accesspackagecatalog-list-resources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of accessPackageResource objects in a catalog. |
| **Access package catalog resource roles**| | |
| [List](../api/accesspackagecatalog-list-resourceroles.md) | [accessPackageResourceRole](accesspackageresourcerole.md) collection | Retrieve a list of accessPackageResourceRole objects in a catalog. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|catalogType|accessPackageCatalogType|Whether the catalog is created by a user or entitlement management. The possible values are: `userManaged`, `serviceDefault`, `serviceManaged`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the access package catalog.|
|displayName|String|The display name of the access package catalog.|
|id|String|Read-only.|
|isExternallyVisible|Boolean|Whether the access packages in this catalog can be requested by users outside of the tenant.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|state|accessPackageCatalogState|Has the value `published` if the access packages are available for management. The possible values are: `unpublished`, `published`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackages|[accessPackage](accesspackage.md) collection|The access packages in this catalog. Read-only. Nullable.|
|resources|[accessPackageResource](../resources/accesspackageresource.md) collection|Access package resources in this catalog.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessPackageCatalog",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageCatalog",
  "catalogType": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isExternallyVisible": "Boolean",
  "modifiedDateTime": "String (timestamp)",
  "state": "String",
}
```
