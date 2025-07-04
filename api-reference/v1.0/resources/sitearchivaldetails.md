---
author: "vanshisingh"
description: "Represents the archival details of a siteCollection."
title: "siteArchivalDetails resource type"
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/31/2024
---

# siteArchivalDetails resource type

Represents the archival details of a [siteCollection](/graph/sitecollection).

## Properties

| Property      | Type   | Description                                    |
|:------------- |:------ |:-----------------------------------------------|
| archiveStatus | siteArchiveStatus | Represents the current archive status of the site collection. Returned only on `$select`. The possible values are: `recentlyArchived`, `fullyArchived`, `reactivating`, `unknownFutureValue`.|

## siteArchiveStatus values

| Value         | Description                                           |
|:--------------|:------------------------------------------------------|
| recentlyArchived | The site collection was recently archived. |
| fullyArchived | The site collection is fully archived.       |
| reactivating | The site collection is reactivating.         |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.  |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.siteArchivalDetails",
"optionalProperties": []
}-->

```json
{
  "archiveStatus": "fullyArchived"
}
```

<!-- {
"type": "#page.annotation",
"createdBy": "API Clinic",
"section": "documentation"
}-->
