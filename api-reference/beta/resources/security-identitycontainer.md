---
title: "identityContainer resource type"
description: "A container for security identities APIs."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 03/27/2024
---

# identityContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for security identities APIs. Currently exposes the [healthIssues](security-healthissue.md) relationship.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|healthIssues|[microsoft.graph.security.healthIssue](security-healthissue.md) collection| Represents potential issues within a customer's Microsoft Defender for Identity configuration that Microsoft Defender for Identity identified.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.identityContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.identityContainer"
}
```
