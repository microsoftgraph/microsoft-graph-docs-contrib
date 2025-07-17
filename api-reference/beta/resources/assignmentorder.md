---
title: "assignmentOrder resource type"
description: "Used to define the order of the attributes being collected within a user flow."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# assignmentOrder resource type

Namespace: microsoft.graph

Used to define the order of the attributes being collected within a user flow. THis determines how the attribute collection page is displayed when a user signs up via a user flow.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|order|String collection|A list of identityUserFlowAttribute IDs provided to determine the order in which attributes should be collected within a user flow.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentOrder"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.assignmentOrder",
  "order": [
    "String"
  ]
}
```
