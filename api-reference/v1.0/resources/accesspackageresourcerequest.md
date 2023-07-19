---
title: "accessPackageResourceRequest resource type"
description: "An access package resource request is a request to add a resource to a catalog so that the roles of the resource can be used in one or more of the catalog's access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageResourceRequest resource type

Namespace: microsoft.graph

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package resource request is a request to add a [resource](accesspackageresource.md) to a catalog so that the roles of the resource can be used in one or more of the catalog's access packages, update a resource in a catalog to have different attribute requirements, or to remove a resource from a catalog that is no longer needed by the access packages.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageResourceRequests](../api/entitlementmanagement-list-resourcerequests.md) | [accessPackageResourceRequest](accesspackageresourcerequest.md) collection | Retrieve a list of **accessPackageResourceRequest** objects. |
| [Create accessPackageResourceRequest](../api/entitlementmanagement-post-resourcerequests.md) | [accessPackageCatalog](accesspackageresourcerequest.md) | Add, update or remove a **accessPackageResource** from a catalog. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String| Read-only.|
|requestType|accessPackageRequestType|The type of the request. Use `adminAdd` to add a resource, if the caller is an administrator or resource owner, `adminUpdate` to update a resource, or `adminRemove` to remove a resource. |
|state|accessPackageRequestState| The outcome of whether the service was able to add the resource to the catalog.  The value is `delivered` if the resource was added or removed. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|catalog|[accessPackageCatalog](accesspackagecatalog.md)| Read-only.|
|resource|[accessPackageResource](accesspackageresource.md)| Nullable.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResourceRequest",
  "keyProperty": "id"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "requestType": "String",
  "state": "String"
}
```


