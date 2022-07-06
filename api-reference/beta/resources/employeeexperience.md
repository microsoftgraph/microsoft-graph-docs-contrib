---
title: "employeeExperience resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# employeeExperience resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get employeeExperience](../api/employeeexperience-get.md)|[employeeExperience](../resources/employeeexperience.md)|Read the properties and relationships of an [employeeExperience](../resources/employeeexperience.md) object.|
|[Update employeeExperience](../api/employeeexperience-update.md)|[employeeExperience](../resources/employeeexperience.md)|Update the properties of an [employeeExperience](../resources/employeeexperience.md) object.|
|[List learningProviders](../api/employeeexperience-list-learningproviders.md)|[learningProvider](../resources/learningprovider.md) collection|Get the learningProvider resources from the learningProviders navigation property.|
|[Create learningProvider](../api/employeeexperience-post-learningproviders.md)|[learningProvider](../resources/learningprovider.md)|Create a new learningProvider object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|learningProviders|[learningProvider](../resources/learningprovider.md) collection|**TODO: Add Description**|

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

