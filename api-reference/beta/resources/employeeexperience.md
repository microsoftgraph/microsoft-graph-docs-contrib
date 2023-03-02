---
title: "employeeExperience resource type"
description: "Represents a container that exposes navigation properties for employee experience resources."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# employeeExperience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container that exposes navigation properties for employee experience resources.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List learningProviders](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get the learningProvider resources from the learningProviders navigation property.|
|[Create learningProvider](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new learningProvider object.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|learningProviders|[learningProvider](../resources/learningprovider.md) collection|A collection of learning providers.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.employeeExperience",
  "openType": false
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.employeeExperience"
}
```
