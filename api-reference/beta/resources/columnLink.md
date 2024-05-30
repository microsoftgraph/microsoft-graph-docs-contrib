---
author: "daspek"
description: "A columnLink on a contentType attaches a site columnDefinition to that content type."
ms.date: 09/12/2017
title: "columnLink resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
---

# columnLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A **columnLink** on a [contentType][] attaches a site **columnDefinition** to that content type.

[contentType]: contenttype.md

## Properties

| Property | Type   | Description                               |
| :------- | :----- | :---------------------------------------- |
| id   | String | The unique identifier for the column.         |
| name | String | The name of the column  in this content type. |

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.columnLink" } -->

```json
{
  "id": "String (identifier)",
  "name": "String"
}
```


<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ColumnLink",
  "suppressions": []
}
-->
