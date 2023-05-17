---
title: "accessPackageCatalog resource type"
description: "An access package catalog is a container for access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageCatalog resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package catalog is a container for zero or more access packages. Azure AD entitlement management includes a built-in catalog named **General**.

An access package catalog might also have linked resources that are used in those access packages to provide access. To view or change the membership of catalog-scoped roles, use the [role assignments](unifiedroleassignment.md) API with the entitlement management RBAC provider.


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageCatalogs](../api/entitlementmanagement-list-accesspackagecatalogs.md) | [accessPackageCatalog](accesspackagecatalog.md) collection | Retrieve a list of accesspackagecatalog objects. |
| [Create accessPackageCatalog](../api/entitlementmanagement-post-accesspackagecatalogs.md) | [accessPackageCatalog](accesspackagecatalog.md) | Create a new accessPackageCatalog object. |
| [Get accessPackageCatalog](../api/accesspackagecatalog-get.md) | [accessPackageCatalog](accesspackagecatalog.md) | Read properties and relationships of an accessPackageCatalog object. |
| [Update accessPackageCatalog](../api/accesspackagecatalog-update.md)|None | Update the properties of an accessPackageCatalog object. |
| [Delete accessPackageCatalog](../api/accesspackagecatalog-delete.md) | | Delete accessPackageCatalog. |
| **Access package resources**| | |
| [List accessPackageCatalog resources](../api/accesspackagecatalog-list-accesspackageresources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of accessPackageResource objects in a catalog. |
| **Access package resource roles**| | |
| [List accessPackageCatalog resource roles](../api/accesspackagecatalog-list-accesspackageresourceroles.md) | [accessPackageResourceRole](accesspackageresourcerole.md) collection | Retrieve a list of accessPackageResourceRole objects for resources in a catalog. |
| **Access package custom package workflow extensions**| | |
|[List accessPackageCustomWorkflowExtensions](../api/accesspackagecatalog-list-accessPackageCustomWorkflowExtensions.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) and [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) collection|Get a list of the [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) and [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) objects and their properties.|
|[Create accessPackageCustomWorkflowExtensions](../api/accesspackagecatalog-post-accessPackageCustomWorkflowExtensions.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md)|Create a new [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) or [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.|
|[Get accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-get.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md)|Read the properties and relationships of a [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) object.|
|[Update accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-update.md)|[accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md)|Update the properties of a [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) object.|
|[Delete accessPackageAssignmentRequestWorkflowExtension](../api/accesspackageassignmentrequestworkflowextension-delete.md)|None|Deletes a [accessPackageAssignmentRequestWorkflowExtension](../resources/accessPackageAssignmentRequestWorkflowExtension.md) object.|
|[Get accessPackageAssignmentWorkflowExtension](../api/accesspackageassignmentworkflowextension-get.md)|[accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md)|Read the properties and relationships of a [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.|
|[Update accessPackageAssignmentWorkflowExtension](../api/accesspackageassignmentworkflowextension-update.md)|[accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md)|Update the properties of a [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.|
|[Delete accessPackageAssignmentWorkflowExtension](../api/accesspackageassignmentworkflowextension-delete.md)|None|Deletes a [accessPackageAssignmentWorkflowExtension](../resources/accessPackageAssignmentWorkflowExtension.md) object.|
| **Custom access package package workflow extensions**| | |
|[List customAccessPackageWorkflowExtensions](../api/accesspackagecatalog-list-customaccesspackageworkflowextensions.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) collection|Get a list of the [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) objects and their properties.|
|[Create customAccessPackageWorkflowExtensions](../api/accesspackagecatalog-post-customaccesspackageworkflowextensions.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Create a new [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Get customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-get.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Read the properties and relationships of a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Update customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-update.md)|[customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md)|Update the properties of a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|
|[Delete customAccessPackageWorkflowExtension](../api/customaccesspackageworkflowextension-delete.md)|None|Deletes a [customAccessPackageWorkflowExtension](../resources/customaccesspackageworkflowextension.md) object.|

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

The following is a JSON representation of the resource.

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

