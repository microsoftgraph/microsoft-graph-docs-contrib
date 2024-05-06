---
title: "officeGraphInsights resource type"
description: "Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for work or school documents trending around users."
author: "simonhult"
ms.localizationpriority: high
ms.subservice: "insights"
doc_type: resourcePageType
---

# officeGraphInsights resource type

Namespace: microsoft.graph

Use [itemInsights](iteminsights.md) in place of **officeGraphInsights** to access the insights API.

**officeGraphInsights** is for backward compatibility from earlier versions of the insights API. It's the base type for [itemInsights](iteminsights.md).

Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify Microsoft OneDrive for work or school documents trending around users.

Insights are returned by the following APIs:

- [Trending](insights-trending.md) - returns documents from OneDrive for work or school and from SharePoint sites trending around a user.
- [Used](insights-used.md) - returns documents viewed or modified by a user. Includes documents the user used in OneDrive for work or school, and SharePoint.
- [Shared](insights-shared.md) - returns documents shared with or by the user. Documents can be shared as URLs, file attachments, reference attachments to OneDrive for work or school and SharePoint files found in Outlook messages and meetings.

Each insight is returned with a **resourceVisualization** and **resourceReference** complex value type (CVT). The **resourceVisualization** CVT contains properties such as **title** and **previewImageUrl**. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| shared    	| [sharedInsight](insights-shared.md) collection		| Calculated relationship identifying documents shared with or by the user. This includes URLs, file attachments, and reference attachments to OneDrive for work or school and SharePoint files found in Outlook messages and meetings. This also includes URLs and reference attachments to Teams conversations. Ordered by recency of share.|
| trending    	| [trending](insights-trending.md) collection		| Calculated relationship identifying documents trending around a user. Trending documents are calculated based on activity of the user's closest network of people and include files stored in OneDrive for work or school and SharePoint. Trending insights help the user to discover potentially useful content that the user has access to, but has never viewed before.|
| used    	| [usedInsight](insights-used.md) collection		| Calculated relationship identifying the latest documents viewed or modified by a user, including OneDrive for work or school and SharePoint documents, ranked by recency of use.|

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
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ],
  "used": [ { "@odata.type": "microsoft.graph.used" } ],
  "shared": [ { "@odata.type": "microsoft.graph.shared" } ]
}
```

