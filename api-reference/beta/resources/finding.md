---
title: "finding resource type"
description: "A finding is the output of the usage data analysis performed by Permissions Management to assess risk with identities and resources."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# finding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A finding is the output of the usage data analysis performed by Permissions Management to assess risk with identities and resources.

Inherits from [entity](../resources/entity.md).

## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniquenessInherited from [entity](../resources/entity.md).|

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

