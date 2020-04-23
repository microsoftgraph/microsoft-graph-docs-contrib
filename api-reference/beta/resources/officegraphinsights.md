---
title: "officeGraphInsights resource type"
description: "Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive documents trending around users."
author: "simonhult"
localization_priority: Priority
ms.prod: "insights"
doc_type: resourcePageType
---

# officeGraphInsights resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive documents trending around users.

Insights are returned by the following APIs:

- [Trending](insights-trending.md) - returns documents from OneDrive and from SharePoint sites trending around a user.
- [Used](insights-used.md) - returns documents viewed and modified by a user. Includes documents the user used in OneDrive for Business, SharePoint, opened as email attachments, and as link attachments from sources like Box, DropBox and Google Drive.
- [Shared](insights-shared.md) - returns documents shared with a user. Documents can be shared as email attachments or as OneDrive for Business links sent in emails.

Each insight is returned with a `resourceVisualization` and `resourceReference` complex value type (CVT). The resourceVisualization CVT contains properties such as `title` and `previewImageUrl`. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| trending    	| [trending](insights-trending.md) collection		| Calculated relationship identifying trending around a user documents. Trending documents are relevant documents from the closest network of the user, which can be stored in OneDrive or in SharePoint sites. Trending insights help the user to discover potentially useful content, which the user has access but never viewed it before.|
| used    	| [usedInsight](insights-used.md) collection		| Calculated relationship identifying the latest documents viewed and modified by a user, including email and link attachments, SharePoint and OneDrive documents, ranked by relevancy to the user.|
| shared    	| [sharedInsight](insights-shared.md) collection		| Calculated relationship identifying the most relevant documents shared with or shared by a user, including file and reference attachments, OneDrive and SharePoint documents, ranked by last shared datetime.|
## JSON representation

Here is a JSON representation of the resource
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
