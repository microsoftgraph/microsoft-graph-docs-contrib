---
title: "itemInsights resource type"
description: "Relationships between a user and items such as OneDrive for work or school documents, calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for work or school documents trending around users."
author: "simonhult"
ms.localizationpriority: high
ms.subservice: "insights"
doc_type: resourcePageType
---

# itemInsights resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Relationships between a user and items such as OneDrive for work or school documents, calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for work or school documents trending around users. Derived from [officeGraphInsights](officegraphinsights.md).

Insights are returned by the following APIs:

- [Trending](insights-trending.md) - returns documents from OneDrive for work or school and from SharePoint sites trending around a user.
- [Used](insights-used.md) - returns documents viewed and modified by a user. Includes documents the user used in OneDrive for work or school, and SharePoint.
- [Shared](insights-shared.md) - returns documents shared with a user. Documents can be shared as email attachments or as OneDrive for work or school links sent in emails.

Each insight is returned with a `resourceVisualization` and `resourceReference` complex value type (CVT). The resourceVisualization CVT contains properties such as `title` and `previewImageUrl`. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

### Limiting item insights

Update [insightsSettings](insightssettings.md) to disable item insights for a specific Microsoft Entra group or an entire organization. For more information, see [customize insights privacy](/graph/insights-customize-item-insights-privacy).

## Properties

None.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| trending        | [trending](insights-trending.md) collection        | Calculated relationship identifying documents trending around a user. Trending documents are calculated based on activity of the user's closest network of people and include files stored in OneDrive for work or school and SharePoint. Trending insights help the user to discover potentially useful content that the user has access to, but has never viewed before.|
| used        | [usedInsight](insights-used.md) collection        | Calculated relationship identifying the latest documents viewed and modified by a user, including OneDrive for work or school and SharePoint documents, ranked by recency of use.|
| shared        | [sharedInsight](insights-shared.md) collection        | Calculated relationship identifying documents shared with or by the user, includes file attachments in emails and meetings, as well as URLs and Reference attachments to OneDrive for work or school and SharePoint files found in emails, meetings, and Teams conversations. Ordered by recency of share.|


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "baseType":"microsoft.graph.officeGraphInsights",
  "optionalProperties": [
    "trending",
    "used",
    "shared"
  ],
  "@odata.type": "microsoft.graph.itemInsights"
}-->

```json
{
  "id": "string",
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ],
  "used": [ { "@odata.type": "microsoft.graph.used" } ],
  "shared": [ { "@odata.type": "microsoft.graph.shared" } ]
}
```
