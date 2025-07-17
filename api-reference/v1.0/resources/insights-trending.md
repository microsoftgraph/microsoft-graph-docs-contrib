---
title: "trending resource type"
description: "Rich relationship connecting a user to documents that are trending around the user (are relevant to the user). OneDrive files, and files stored on SharePoint team sites can trend around the user."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 05/15/2024
---

# trending resource type

Namespace: microsoft.graph

Rich relationship connecting a user to documents that are trending around the user (are relevant to the user). OneDrive files, and files stored on SharePoint team sites can trend around the user.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List trending](../api/insights-list-trending.md) |[trending](insights-trending.md) collection| Get a list of trending files.|

## Properties

| Property      | Type          	 				| Description  |
| ------------- |---------------	 				| -------------|
| id      				| String	 				| Unique identifier of the relationship. Read only. 	   |
| lastModifiedDateTime  | DateTimeOffset            | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
| resourceReference     | [resourceReference](insights-resourcereference.md)  		| Reference properties of the trending document, such as the url and type of the document. |
| resourceVisualization | [resourceVisualization](insights-resourcevisualization.md)   	| Properties that you can use to visualize the document in your experience. |
| weight     			| Double     				| Value indicating how much the document is currently trending. The larger the number, the more the document is currently trending around the user (the more relevant it is). Returned documents are sorted by this value.  |

## Relationships

| Property      | Type          | Description  |
| ------------- |---------------| -------------|
| resource    	| entity		| Used for navigating to the trending document. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
    "resource"
  ],
  "@odata.type": "microsoft.graph.trending"
}-->

```json
{
  "id": "string",
  "weight": "double",
  "resourceVisualization": {"@odata.type": "microsoft.graph.resourceVisualization"},
  "resourceReference": {"@odata.type": "microsoft.graph.resourceReference"},
  "lastModifiedDateTime": "String (timestamp)"
}
```

