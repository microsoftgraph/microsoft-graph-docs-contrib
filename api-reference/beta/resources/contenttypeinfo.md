---
author: "daspek"
description: "Represents the SharePoint content type of an item."
title: "contentTypeInfo resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 03/21/2024
---

# contentTypeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the SharePoint [contentType](contenttype.md) of an item.

## Properties

| Property | Type   | Description                   |
| :------- | :----- | :---------------------------- |
| id       | String | The ID of the content type.   |
| name     | String | The name of the content type. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.contentTypeInfo", "@type.aka": "oneDrive.contentTypeFacet" } -->

```json
{
  "id": "String",
  "name": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentTypeInfo",
  "suppressions": []
}
-->
