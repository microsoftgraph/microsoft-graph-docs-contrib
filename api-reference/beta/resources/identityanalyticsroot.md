---
title: "identityAnalyticsRoot resource type"
description: "Represents a container for Microsoft Entra identity analytics reports in a tenant."
ms.localizationpriority: medium
author: "Licantrop0"
ms.subservice: "reports"
doc_type: "resourcePageType"
ms.date: 06/09/2026
---

# identityAnalyticsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for Microsoft Entra identity analytics in a tenant. Identity analytics reports point-in-time data about your directory objects, and currently covers the [groups](../resources/groupanalytics.md) in the tenant.

Access this resource through the [reportRoot](../resources/reportroot.md) resource, at the `/reports/identityAnalytics` path.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type                                                       | Description                                |
| :----------- | :--------------------------------------------------------- | :----------------------------------------- |
| groups       | [groupAnalytics](../resources/groupanalytics.md) collection | The analytics for the groups in the tenant. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityAnalyticsRoot",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityAnalyticsRoot"
}
```
