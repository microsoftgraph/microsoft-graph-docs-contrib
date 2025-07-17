---
title: sharedInsight resource type
description: 'An insight representing files shared with or by a specific user. The following shared files are supported:'
author: simonhult
ms.localizationpriority: medium
ms.subservice: insights
doc_type: resourcePageType
ms.date: 03/12/2024
---

# sharedInsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An insight representing files shared with or by a specific user. The following shared files are supported:

- Files attached directly in an email or a meeting invite.
- OneDrive for work or school and SharePoint modern attachments - files stored in OneDrive for work or school and SharePoint that users share as a links in an email.

**Note**: We're currently working on populating the results of the Shared API with data. Some data might be missing in the first weeks after release.

## Methods

| Method                                        | Return Type                                    | Description                 |
| :-------------------------------------------- | :--------------------------------------------- | :-------------------------- |
| [List shared](../api/insights-list-shared.md) | [sharedInsight](insights-shared.md) collection | Get a list of shared files. |

## Properties

| Property              | Type                                                       | Description                                                                                      |
| --------------------- | ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| id                    | String                                                     | Unique identifier of the relationship. Read only.                                                |
| lastShared            | [sharingDetail](insights-sharingdetail.md)                 | Details about the shared item. Read only.                                                        |
| resourceVisualization | [resourceVisualization](insights-resourcevisualization.md) | Properties that you can use to visualize the document in your experience. Read-only              |
| resourceReference     | [resourceReference](insights-resourcereference.md)         | Reference properties of the shared document, such as the url and type of the document. Read-only |

## Relationships

| Relationship | Type              | Description                                                                                                                                           |
| ------------ | ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| resource     | entity collection | Used for navigating to the item that was shared. For file attachments, the type is *fileAttachment*. For linked attachments, the type is *driveItem*. |

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType":"resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharedInsight"
}-->

```json
{
  "id": "string",
  "lastShared": "sharingDetail",
  "resourceVisualization": "resourceVisualization",
  "resourceReference": "resourceReference",
  
  "resource": [ { "@odata.type": "microsoft.graph.entity" } ]
}
```
