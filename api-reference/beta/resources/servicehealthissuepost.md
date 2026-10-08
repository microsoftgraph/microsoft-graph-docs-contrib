---
title: "serviceHealthIssuePost resource type"
description: "Represents a historical post in a service health issue."
author: "payiAzure"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# serviceHealthIssuePost resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a historical post in a [service health issue](../resources/servicehealthissue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The published time of the post.|
|description|[itemBody](../resources/itembody.md)|The content of the service issue post. The supported value for the contentType property is `html`.|
|postType|postType|The post type of the service issue historical post. The possible values are: `regular`, `quick`, `strategic`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

