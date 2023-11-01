---
title: "finding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# finding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List findings](../api/permissionsanalytics-list-findings.md)|[finding](../resources/finding.md) collection|Get a list of the [finding](../resources/finding.md) objects and their properties.|
|[Create finding](../api/permissionsanalytics-post-findings.md)|[finding](../resources/finding.md)|Create a new [finding](../resources/finding.md) object.|
|[Get finding](../api/finding-get.md)|[finding](../resources/finding.md)|Read the properties and relationships of a [finding](../resources/finding.md) object.|
|[Update finding](../api/finding-update.md)|[finding](../resources/finding.md)|Update the properties of a [finding](../resources/finding.md) object.|
|[Delete finding](../api/permissionsanalytics-delete-findings.md)|None|Delete a [finding](../resources/finding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.finding",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.finding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)"
}
```

