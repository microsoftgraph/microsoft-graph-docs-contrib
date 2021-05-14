---
title: "serviceHealthIssuePost complex type"
description: "This complex type represents the history posts which involving new post type for the service issue."
author: "payiAzure"
localization_priority: Normal
ms.prod: "m365-servicecommsplatform"
doc_type: resourcePageType
---

# serviceHealthIssuePost complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This complex type represents the history posts which involving new post type for the service issue.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The published time of the post|
|description|[itemBody](../resources/itembody.md)|The content of the service issue post|
|postType|postType|The post type of the service issue history posts. Possible values are: `regular`, `quick`, `strategic`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceHealthIssuePost"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealthIssuePost",
  "createdDateTime": "String (timestamp)",
  "postType": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```

