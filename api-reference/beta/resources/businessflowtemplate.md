---
title: "businessFlowTemplate resource type (deprecated)"
description: "In the Microsoft Entra access reviews feature, the `businesFlowTemplate` represents a Microsoft Entra business flow template. The identifier of a template, such as to review guest members of a group, is supplied by the caller when creating an access review."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "shubhamguptacal"
ms.date: 08/21/2024
---

# businessFlowTemplate resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

In the Microsoft Entra [access reviews](accessreviews-root.md) feature, the **businesFlowTemplate** represents a Microsoft Entra business flow template. The identifier of a template, such as to review guest members of a group, is supplied by the caller when creating an access review.

The business flow template objects are predefined and automatically generated when an authorized administrator onboards the tenant to use the access reviews feature. They include the following access reviews workflows and scopes:
- Assignments to an application
- Memberships of a group
- Memberships of a Microsoft Entra role
- Memberships of guests to a group
- Assignments of guests to an application.

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List](../api/businessflowtemplate-list.md) | [businessFlowTemplate](businessflowtemplate.md) collection| Get the business flow templates appropriate to access reviews.|

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
| id                     |String                | The feature-assigned identifier of the business flow template. These values are case sensitive.                                      |
| displayName            |String                | The name of the business flow template                                                             |


## Relationships

None.

## Related content

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[Create accessReview](../api/accessreview-create.md) |    [accessReview](accessreview.md) |    Create a new accessReview. |


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.businessFlowTemplate"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "businessFlowTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
