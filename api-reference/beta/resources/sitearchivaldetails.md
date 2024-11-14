---
author: "guptasandeep"
description: "Represents the archival details of a siteCollection."
title: "siteArchivalDetails resource type"
ms.date: 11/15/2024
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# siteArchivalDetails resource type

Represents the archival details of a [siteCollection](../resources/sitecollection.md).

## Properties

| Property      | Type   | Description                                    |
|:------------- |:------ |:-----------------------------------------------|
|archivedBy|[identitySet](../resources/identityset.md)| User/Application who archived the container. |
|archivedDateTime|DateTimeOffset| Time when the container was archived. |
| archiveStatus | siteArchiveStatus | Represents the current archive status of the site collection. Returned only on `$select`.|

## Relationships
None.

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
  "@odata.type": "#microsoft.graph.siteArchivalDetails",
  "archiveStatus": "String",
  "archivedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "archivedDateTime": "String (timestamp)"
}
```
