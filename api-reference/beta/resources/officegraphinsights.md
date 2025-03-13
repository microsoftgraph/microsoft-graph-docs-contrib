---
title: "officeGraphInsights resource type"
description: "Insights are relationships calculated using advanced analytics and machine learning techniques."
author: "simonhult"
ms.localizationpriority: high
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 05/18/2024
---

# officeGraphInsights resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!NOTE]
> Use [itemInsights](iteminsights.md) instead of **officeGraphInsights** to access the insights API.
> 
> **officeGraphInsights** is maintained for backward compatibility with earlier versions of the insights API. It's the base type for [itemInsights](iteminsights.md).

Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for work or school documents trending around users.

Insights are returned by the following APIs:

- [Trending](insights-trending.md) - returns documents from OneDrive for work or school and from SharePoint sites trending around a user.
- [Used](insights-used.md) - returns documents viewed or modified by a user. Includes documents the user used in OneDrive for work or school, and SharePoint.
- [Shared](insights-shared.md) - returns documents shared with or by the user. Documents can be shared as URLs, file attachments, reference attachments to OneDrive for work or school and SharePoint files found in Outlook messages and meetings.

Each insight is returned with a **resourceVisualization** and **resourceReference** complex value type (CVT). The **resourceVisualization** CVT contains properties such as **title** and **previewImageUrl**. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

## Properties
None.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| shared    	| [sharedInsight](insights-shared.md) collection		| Access this property from the derived type [itemInsights](iteminsights.md).|
| trending    	| [trending](insights-trending.md) collection		| Access this property from the derived type [itemInsights](iteminsights.md).|
| used    	| [usedInsight](insights-used.md) collection		| Access this property from the derived type [itemInsights](iteminsights.md).|


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "baseType":"microsoft.graph.entity",
  "optionalProperties": [
    "trending",
    "used",
    "shared"
  ],
  "@odata.type": "microsoft.graph.officeGraphInsights"
}-->

```json
{
  "id": "string",
  "shared": [ { "@odata.type": "microsoft.graph.shared" } ],
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ],
  "used": [ { "@odata.type": "microsoft.graph.used" } ]
}
```
