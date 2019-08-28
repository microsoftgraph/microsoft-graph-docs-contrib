---
title: "accessPackage resource type"
description: "An access package defines the collections of resource roles and the policies for how one or more users may obtain access to those resources."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackage resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Azure AD Entitlement Management, an access package defines the collections of resource roles and the policies for how one or more users may obtain access to those resources.  Each access package is contained within an access package catalog, and has links to the resources via the resource-specific role scopes which define the access the package provides.  An access package links to the access package assignment policies, each of which define who can request or be assigned an access package assignment.


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackage",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{

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
