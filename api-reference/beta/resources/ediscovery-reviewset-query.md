---
title: "reviewSetQuery resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# reviewSetQuery resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/ediscovery-reviewset-query-get.md) | [reviewSetQuery](ediscovery-reviewset-query.md) | Read properties and relationships of reviewSetQuery object. |
| [List](../api/ediscovery-reviewset-query-list.md) | [reviewSetQuery](ediscovery-reviewset-query.md) collection | List the review set queries in a review set. |
| [Create](../api/ediscovery-reviewset-query-create.md) | [reviewSetQuery](ediscovery-reviewset-query.md) | Create a new review set query. |
| [Update](../api/ediscovery-reviewset-query-update.md) | [reviewSetQuery](ediscovery-reviewset-query.md) | Update a review set query. |
| [Delete](../api/ediscovery-reviewset-query-delete.md) | None | Delete review set query. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| createdBy | [identitySet](https://docs.microsoft.com/graph/api/resources/identityset) | The user who created the query. |
| createdDateTime |DateTimeOffset| The time and date when the query was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
| displayName | String | The name of the query|
| id |String| The unique identifier of the query. Read-only.|
| lastModifiedBy | [identitySet](https://docs.microsoft.com/graph/api/resources/identityset) | The user who last modified the query. |
| lastModifiedDateTime |DateTimeOffset | The date and time the query was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
| query | String | The query string in KQL (Keyword Query Language) query. Please refer to https://docs.microsoft.com/microsoft-365/compliance/document-metadata-fields-in-advanced-ediscovery for more details.  This field maps directly to the keywords condition.  You can refine searches by using fields listed in the *searchable field name* paired with values, e.g. *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016* |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.reviewSetQuery",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "query": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reviewSetQuery resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->