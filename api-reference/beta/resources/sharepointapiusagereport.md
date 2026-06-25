---
title: "sharePointApiUsageReport resource type"
description: "Represents aggregated SharePoint Online tenant usage data containing a collection of usage data points."
author: "ireneren"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
ms.date: 03/16/2026
---

# sharePointApiUsageReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents aggregated OneDrive and SharePoint API usage data for a tenant. The report contains a summary aggregating usage across all applications and details showing per-application usage.

## Properties

| Property | Type                                                                                    | Description                                                                                                                                                                                                          |
|:---------|:----------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| details  | [sharePointApiUsageDataPoint](../resources/sharepointapiusagedatapoint.md) collection | The collection of per-application, per-date usage data points. Each item represents usage for a specific application on a specific date. |
| summary  | [sharePointApiUsageDataPoint](../resources/sharepointapiusagedatapoint.md) | The aggregated summary of usage across all applications for the specified period or date. The **appId** is `null` and **activeApps** contains the count of distinct applications. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointApiUsageReport",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointApiUsageReport",
  "summary": {
    "@odata.type": "microsoft.graph.sharePointApiUsageDataPoint"
  },
  "details": [
    {
      "@odata.type": "microsoft.graph.sharePointApiUsageDataPoint"
    }
  ]
}
```
