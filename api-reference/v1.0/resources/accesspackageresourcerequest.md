---
title: "accessPackageResourceRequest resource type"
description: "An access package resource request is a request to a add a resource to a catalog so that the roles of the resource can be used in one or more of the catalog's access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageResourceRequest resource type

Namespace: microsoft.graph

In [Azure AD entitlement management](entitlementmanagement-overview.md), an access package resource request is a request to add a [resource](accesspackageresource.md) to a catalog so that the roles of the resource can be used in one or more of the catalog's access packages, update a resource in a catalog to have different attribute requirements, or to remove a resource from a catalog that is no longer needed by the access packages.

## Methods

None.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|state|String| The outcome of whether the service was able to add the resource to the catalog.  The value is `Delivered` if the resource was added or removed. Read-Only.|
|requestType|String|Use `AdminAdd` to add a resource, if the caller is an administrator or resource owner, `AdminUpdate` to update a resource, or `AdminRemove` to remove a resource. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|resource|[accessPackageResource](accesspackageresource.md)| Nullable.|
|catalog|[accessPackageCatalog](accesspackagecatalog.md)| Read-only.|

## JSON representatio

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
  "id": "1fe272f0-d463-42aa-a9a8-b07ab50a1c4d",
  "state": "Delivered",
  "requestType": "AdminAdd"
}
```


