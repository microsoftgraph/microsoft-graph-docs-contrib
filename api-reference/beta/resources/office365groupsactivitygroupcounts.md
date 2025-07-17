---
title: "office365GroupsActivityGroupCounts resource type"
description: "The following JSON representation shows the resource type."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "sarahwxy"
doc_type: resourcePageType
ms.date: 07/25/2024
---

# office365GroupsActivityGroupCounts resource type

Namespace: microsoft.graph

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| total             | Int64  | The total number of groups.              |
| active            | Int64  | The number of active groups. A group is considered active if any of the following occurred: group mailbox received email, or  a user viewed, edited, shared, or synced files in SharePoint document library, or a user viewed SharePoint pages, or a user posted, read, or liked messages in Yammer groups. |
| reportDate        | Date   | The date on which groups were active. |
| reportPeriod      | String | The number of days the report covers.    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityGroupCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "total": 1024, 
  "active": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```


