---
title: "case resource type"
description: "eDiscovery cases are containers that contain custodians, holds, collections, review sets, and exports."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: "resourcePageType"
---

# case resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

eDiscovery cases are containers that contain custodians, holds, collections, review sets, and exports.  Learn more about cases and [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List Case](../api/ediscovery-case-list.md) | [case](ediscovery-case.md) collection | Get a list of eDiscovery **case**s.|
| [Get Case](../api/ediscovery-case-get.md) | [case](ediscovery-case.md) | Read eDiscovery **case** properties. |
| [Create Case](../api/ediscovery-case-post.md) | [case](ediscovery-case.md) | Create a new **case** by posting to the cases collection. |
| [Update Case](../api/ediscovery-case-update.md) | [case](ediscovery-case.md) | Update an eDiscovery **case**. |
| [Delete Case](../api/ediscovery-case-delete.md) | None | Delete an eDiscovery **case**. |
| [Close Case](../api/ediscovery-case-close.md)        | None                                              | Close an eDiscovery case. |
| [Reopen Case](../api/ediscovery-case-reopen.md)      | None                                              | Reopen a closed eDiscovery case.|
| [List custodians](../api/ediscovery-case-list-custodians.md)   | [custodian](../resources/ediscovery-custodian.md) collection |Get the custodian resources from the custodians navigation property.|
| [Create custodians](../api/ediscovery-case-post-custodians.md)  | [custodian](../resources/ediscovery-custodian.md)           |Create a new custodian object.|
| [List reviewSets](../api/ediscovery-case-list-reviewsets.md)   | [reviewSet](../resources/ediscovery-reviewset.md) collection | Get the reviewSet resources from the reviewSets navigation property.|
| [Create reviewSets](../api/ediscovery-case-post-reviewsets.md)  | [reviewSet](../resources/ediscovery-reviewset.md)           | Create a new reviewSet object.|
| [List legal holds](../api/ediscovery-case-list-legalholds.md)   | [legalHold](../resources/ediscovery-legalhold.md) collection | Get the legalHold resources from the case navigation property.|
| [Create legal holds](../api/ediscovery-case-post-legalholds.md)  | [legalHold](../resources/ediscovery-legalhold.md)           | Create a new legalHold object.|
| [List sourceCollections](../api/ediscovery-case-list-sourcecollections.md)|[sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get the sourceCollection resources from the sourceCollections navigation property.|
| [Create sourceCollection](../api/ediscovery-case-post-sourcecollections.md)|[sourceCollection](../resources/ediscovery-sourcecollection.md)|Create a new sourceCollection object.|
| [List tags](../api/ediscovery-case-list-tags.md)|[tag](../resources/ediscovery-tag.md) collection|Get the tag resources from the tags navigation property.|
| [Create tag](../api/ediscovery-case-post-tags.md)|[tag](../resources/ediscovery-tag.md)|Create a new tag object.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|closedBy|[identitySet](/graph/api/resources/identityset)|The user who closed the case.|
|closedDateTime|DateTimeOffset|The date and time when the case was closed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|createdBy|[identitySet](/graph/api/resources/identityset)|The user who created the case.|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|String|The case description.|
|displayName|String|The case name.|
|externalId|String|The external case number for customer reference.|
|id|String| The ID for the eDiscovery case. Read-only. |
|lastModifiedBy|[identitySet](/graph/api/resources/identityset)|The last user who modified the entity.|
|lastModifiedDateTime|DateTimeOffset| The latest date and time when the case was modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|status|String| The case status. Possible values are `unknown`, `active`, `pendingDelete`, `closing`, `closed`, and `closedWithError`. For details see the following table.|

### caseStatus values

|Member|Description|
|:----|-----------|
| unknown | Case status is unknown. |
| active | Case is active. |
| pendingDelete | Case was deleted, but the delete has not been fully transacted. |
| closing | Case was closed, but the operation has not been fully transacted. |
| closed | The case is closed. |
| closedWithError | The case is closed, but there were errors releasing holds in the case. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|Legal holds|[legalHold](../resources/ediscovery-legalhold.md) collection| Returns a list of case **legalHold**s for this **case**.  Nullable. |
|Operations|[caseOperation](../resources/ediscovery-caseoperation.md) collection| Returns a list of case **operation**s for this **case**. Nullable. |
|Review sets|[reviewSet](../resources/ediscovery-reviewset.md) collection| Collection of review sets in the case. Read-only. Nullable. |
|sourceCollections|[sourceCollection](../resources/ediscovery-sourcecollection.md) collection|**TODO: Add Description**|
|tags|[tag](../resources/ediscovery-tag.md) collection|**TODO: Add Description**|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [
 
  ],
  "@odata.type": "microsoft.graph.case"
}-->

```json
{
  "@odata.type": "#microsoft.graph.ediscovery.case",
  "description": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "closedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "closedDateTime": "String (timestamp)",
  "externalId": "String",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "case resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
