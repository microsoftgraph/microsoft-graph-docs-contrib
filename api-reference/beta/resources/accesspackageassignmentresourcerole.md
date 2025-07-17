---
title: "accessPackageAssignmentResourceRole resource type"
description: "Indicates the resource-specific role that a subject is assigned through an access package assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# accessPackageAssignmentResourceRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Microsoft Entra entitlement management](entitlementmanagement-overview.md), an access package assignment resource role indicates the resource-specific role that a subject is assigned through an access package assignment.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/accesspackageassignmentresourcerole-get.md) | [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md)  | Retrieve an accessPackageAssignmentResourceRole object. |
| [List](../api/entitlementmanagement-list-accesspackageassignmentresourceroles.md) | [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md) collection | Retrieve a list of accessPackageAssignmentResourceRole objects. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|originId|String|A unique identifier relative to the origin system, corresponding to the originId property of the [accessPackageResourceRole](accesspackageresourcerole.md). |
|originSystem|String|The system where the role assignment is to be created or has been created for an access package assignment, such as `SharePointOnline`, `AadGroup`, or `AadApplication`, corresponding to the originSystem property of the [accessPackageResourceRole](accesspackageresourcerole.md).|
|status|String|The value is `PendingFulfillment` before the access package assignment is delivered to the origin system, and `Fulfilled` after the access package assignment is delivered to the origin system.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageAssignments|[accessPackageAssignment](accesspackageassignment.md) collection| The access package assignments resulting in this role assignment. Read-only. Nullable.|
|accessPackageResourceRole|[accessPackageResourceRole](accesspackageresourcerole.md)| Read-only. Nullable.|
|accessPackageResourceScope|[accessPackageResourceScope](accesspackageresourcescope.md)| Read-only. Nullable.|
|accessPackageSubject|[accessPackageSubject](accesspackagesubject.md)| Read-only. Nullable. Supports `$filter` (`eq`) on **objectId** and `$expand` query parameters.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignmentResourceRole",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "originId": "String",
  "originSystem": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentResourceRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
