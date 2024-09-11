---
title: "identityContainer resource type"
description: "A container for security identities APIs."
author: "naalmog"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 04/09/2024
ms.subservice: "security"
---

# identityContainer resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for security identities APIs that currently exposes the [healthIssues](security-healthissue.md) relationship.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|healthIssues|[microsoft.graph.security.healthIssue](security-healthissue.md) collection| Represents potential issues identified by Microsoft Defender for Identity within a customer's Microsoft Defender for Identity configuration. |

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