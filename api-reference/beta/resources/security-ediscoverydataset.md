---
title: "dataSet resource type"
description: "Base type for eDiscovery Review Set"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# dataSet resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for eDiscovery Review Set.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|The user who created the data set. Read-only. |
|createdDateTime|DateTimeOffset|The datetime when the review set was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The data set description.|
|displayName|String|The data set name. The name is unique with a maximum limit of 64 characters.|
|id|String|The data set unique identifier. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataSet",
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

