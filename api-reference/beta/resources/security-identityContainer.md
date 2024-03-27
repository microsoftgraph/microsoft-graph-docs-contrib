---
title: "identityContainer resource type"
description: "Container for security identities APIs."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/27/2024
---

# identityContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for security identities APIs. Currently exposes the [health issue](security-healthissue.md) relationships.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|healthIssues|[health issue](security-healthissue.md) collection| Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.identityContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.identityContainer"
}
```
