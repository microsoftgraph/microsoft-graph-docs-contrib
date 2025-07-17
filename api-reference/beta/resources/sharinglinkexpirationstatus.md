---
title: "sharingLinkExpirationStatus resource type"
description: "Indicates whether links must expire, and if link expiration is enabled, provides a default link expiration time."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 05/04/2024
---

# sharingLinkExpirationStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether links must expire, and if link expiration is enabled, provides a default link expiration time.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultExpirationInDays|Int32|Default link expiration in days. Returns -1 if there is no required expiration time.|
|disabledReason|String|Provides a description of why this operation is not enabled. Only returned if this operation is not enabled.|
|enabled|Boolean|Indicates whether this operation is enabled.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharingLinkExpirationStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharingLinkExpirationStatus",
  "enabled": "Boolean",
  "disabledReason": "String",
  "defaultExpirationInDays": "Integer"
}
```
