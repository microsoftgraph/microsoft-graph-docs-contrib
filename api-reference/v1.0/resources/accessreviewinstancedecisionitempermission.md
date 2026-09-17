---
title: "accessReviewInstanceDecisionItemPermission resource type"
description: "Represents the permission that grants a principal access to the resource in an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/31/2026
---

# accessReviewInstanceDecisionItemPermission resource type

Namespace: microsoft.graph

In an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md), the **permission** property represents the permission that grants a principal access to a resource.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the permission.|
|displayName|String|The display name of the permission.|
|id|String|The identifier of the permission.|
|type|String|The type of the permission.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemPermission"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemPermission",
  "id": "String",
  "displayName": "String",
  "type": "String",
  "description": "String"
}
```
