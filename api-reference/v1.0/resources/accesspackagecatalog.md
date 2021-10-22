---
title: "accessPackageCatalog resource type"
description: "An access package catalog is a container for access packages."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageCatalog resource type

Namespace: microsoft.graph


In [Azure AD entitlement management](entitlementmanagement-root.md), an access package catalog is a container for zero or more access packages. An access package catalog might also have linked resources that are used in those access packages to provide access. To view or change the membership of catalog-scoped roles, use the [role assignments](unifiedroleassignment.md) API with the entitlement management RBAC provider.



## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessPackageCatalogs](../api/accesspackagecatalog-list.md)|[accessPackageCatalog](accesspackagecatalog.md) collection|Retrieve a list of accesspackagecatalog objects. |
|[Create accessPackageCatalog](../api/entitlementmanagement-post-catalogs.md)|[accessPackageCatalog](accesspackagecatalog.md)|Create a new accessPackageCatalog object. |
|[Get accessPackageCatalog](../api/accesspackagecatalog-get.md)|[accessPackageCatalog](accesspackagecatalog.md)|Read properties and relationships of an accessPackageCatalog object. |
|[Update accessPackageCatalog](../api/accesspackagecatalog-update.md)|None|Update the properties of an accessPackageCatalog object. |
|[Delete accessPackageCatalog](../api/accesspackagecatalog-delete.md)||Delete accessPackageCatalog. |

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
|state|accessPackageCatalogState|Has the value `Published` if the access packages are available for management. The possible values are: `unpublished`, `published`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessPackages|[accessPackage](accesspackage.md) collection|The access packages in this catalog. Read-only. Nullable.|

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "catalogType": "String",
  "state": "String",
  "isExternallyVisible": "Boolean",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)"
}
```


