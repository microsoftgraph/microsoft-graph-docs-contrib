---
author: "guptasandeep"
description: "Represents the archival details of a siteCollection."
title: "siteArchivalDetails resource type"
ms.date: 02/06/2025
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# siteArchivalDetails resource type

Represents the archival details of a [siteCollection](../resources/sitecollection.md).

## Properties

| Property      | Type   | Description                                    |
|:------------- |:------ |:-----------------------------------------------|
|archivedBy|[identitySet](../resources/identityset.md)| The user or application that archived the container. |
|archivedDateTime|DateTimeOffset| Time when the container was archived. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| archiveStatus | siteArchiveStatus | Represents the current archive status of the site collection. Returned only on `$select`.|

### siteArchiveStatus values

| Value         | Description                                           |
|:--------------|:------------------------------------------------------|
| recentlyArchived | The site collection was recently archived. |
| fullyArchived | The site collection is fully archived.       |
| reactivating | The site collection is reactivating.         |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.  |

## Relationships
None.

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
  "archivedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "archivedDateTime": "String (timestamp)",
  "archiveStatus": "String"
}
```
