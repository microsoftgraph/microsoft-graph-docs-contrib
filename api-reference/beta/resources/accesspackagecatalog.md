---
title: "accessPackageCatalog resource type"
description: "An access package catalog is a container for access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# accessPackageCatalog resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package catalog is a container for zero or more access packages. Microsoft Entra entitlement management includes a built-in catalog named **General**.

An access package catalog might also have linked resources that are used in those access packages to provide access. To view or change the membership of catalog-scoped roles, use the [role assignments](unifiedroleassignment.md) API with the entitlement management RBAC provider.


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/entitlementmanagement-list-accesspackagecatalogs.md) | [accessPackageCatalog](accesspackagecatalog.md) collection | Retrieve a list of accesspackagecatalog objects. |
| [Create](../api/entitlementmanagement-post-accesspackagecatalogs.md) | [accessPackageCatalog](accesspackagecatalog.md) | Create a new accessPackageCatalog object. |
| [Get](../api/accesspackagecatalog-get.md) | [accessPackageCatalog](accesspackagecatalog.md) | Read properties and relationships of an accessPackageCatalog object. |
| [Update](../api/accesspackagecatalog-update.md)|None | Update the properties of an accessPackageCatalog object. |
| [Delete](../api/accesspackagecatalog-delete.md) | | Delete accessPackageCatalog. |
| **Access package catalog resources**| | |
| [List](../api/accesspackagecatalog-list-accesspackageresources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of accessPackageResource objects in a catalog. |
| **Access package catalog resource roles**| | |
| [List](../api/accesspackagecatalog-list-accesspackageresourceroles.md) | [accessPackageResourceRole](accesspackageresourcerole.md) collection | Retrieve a list of accessPackageResourceRole objects for resources in a catalog. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|catalogStatus|String|Has the value `Published` if the access packages are available for management.|
|catalogType|String|One of `UserManaged` or `ServiceDefault`. |
|createdBy|String|UPN of the user who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the access package catalog.|
|displayName|String|The display name of the access package catalog. Supports `$filter` (`eq`, `contains`).|
|id|String| Read-only.|
|isExternallyVisible|Boolean|Whether the access packages in this catalog can be requested by users outside of the tenant.|
|modifiedBy|String|The UPN of the user who last modified this resource. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackages|[accessPackage](accesspackage.md) collection| The access packages in this catalog. Read-only. Nullable. Supports `$expand`.|
|accessPackageCustomWorkflowExtensions|[customCalloutExtension](../resources/customcalloutextension.md) collection|The attributes of a logic app, which can be called at various stages of an access package request and assignment cycle. |
|accessPackageResources|[accessPackageResource](accesspackageresource.md) collection| Read-only. Nullable.|
|accessPackageResourceRoles|[accessPackageResourceRole](accesspackageresourcerole.md) collection|The roles in each resource in a catalog. Read-only.|
|accessPackageResourceScopes|[accessPackageResourceScope](accesspackageresourcescope.md) collection|Read-only.|
|customAccessPackageWorkflowExtension |[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) collection|The attributes of a logic app, which can be called at various stages of an access package request and assignment cycle. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageCatalog",
  "keyProperty": "id"
}-->

```json
{
    "id":"360fa7de-90be-48dc-a2ce-fc40094a93dd",
    "description":"Sample access package catalog",
    "displayName":"Access package catalog for testing",
    "isExternallyVisible":false,
    "catalogType":"UserManaged",
    "catalogStatus":"Published",
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
  "description": "accessPackageCatalog resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
