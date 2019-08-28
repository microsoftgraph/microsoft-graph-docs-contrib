---
title: "accessPackageAssignmentPolicy resource type"
description: "An access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageAssignmentPolicy resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Azure AD Entitlement Management, an access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment.  An access package can have zero or more policies.  When a request from a subject is received, the subject is matched against each policy to find the policy (if any) for that subject.   The policy then determines whether the request requires approval, and the duration of the access package assignment.


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
  "@odata.type": "microsoft.graph.accessPackageAssignmentPolicy",
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
  "description": "accessPackageAssignmentPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
