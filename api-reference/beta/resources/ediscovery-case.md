---
title: "ediscoveryCase resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# ediscoveryCase resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

eDiscovery cases are containers that contain custodians, holds, collections, review sets, and exports.  Learn more about cases and [Advanced eDiscovery](https://docs.microsoft.com/en-us/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/ediscovery-case-list.md) | [ediscoveryCase](ediscoverycase.md) collection | Get a list of eDiscovery cases|
| [Get](../api/ediscovery-case-get.md) | [ediscoveryCase](ediscoverycase.md) | Read eDiscovery case properties. |
| [Create](../api/ediscovery-case-create.md) | [ediscoveryCase](ediscoverycase.md) | Create a new ediscoveryCase by posting to the cases collection. |
| [Update](../api/ediscovery-case-update.md) | [ediscoveryCase](ediscoverycase.md) | Update eDiscovery case. |
| [Delete](../api/ediscovery-case-delete.md) | None | Delete eDiscovery case. |

<!--
These belong in review set
| [Create reviewSet](../api/ediscoverycase-post-reviewsets.md) | [reviewSet](reviewset.md) | Create a new reviewSet by posting to the reviewSets collection. |
| [List reviewSets](../api/ediscoverycase-list-reviewsets.md) | [reviewSet](reviewset.md) collection | Get a reviewSet object collection. |
-->

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|closedBy|[identitySet](https://docs.microsoft.com/graph/api/resources/identityset)|The user who closed the case.|
|closedDateTime|DateTimeOffset|The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|createdBy|[identitySet](https://docs.microsoft.com/graph/api/resources/identityset)|The user who created the case.|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|String|The case description.|
|displayName|String|The case name.|
|externalId|String|The external case number for customer reference.|
|id|String| The Id for the eDiscovery case. Read-only. |
|lastModifiedBy|[identitySet](https://docs.microsoft.com/graph/api/resources/identityset)|The last user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset| The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|status|[caseStatus](ediscovery-casestatus-enum.md")| The case status.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|Review sets|[reviewSet](reviewset.md) collection| Collection of review sets in the case. Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "closedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "closedDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "externalId": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "status": "string"
}
```


<!--
Should we include this instead?

{
    "id": "061b9a92-8926-4bd9-b41d-abf35edc7583",
    "displayName": "My Case 1",
    "description": "",
    "createdBy": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "eDiscovery admin"
        }
    },
    "createdDateTime": "2020-02-20T22:42:28.5505500Z",
    "lastModifiedBy": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "eDiscovery admin"
        }
    },
    "lastModifiedDateTime": "2020-02-20T22:42:28.5505500Z",
    "status": "active",
    "closedBy": null,
    "closedDateTime": null,
    "externalId": ""
}

-->

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ediscoveryCase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->