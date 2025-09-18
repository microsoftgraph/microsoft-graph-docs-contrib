---
title: "accessPackageSuggestionSelfAssignmentHistoryBased resource type"
description: "Represents access package suggestions based on the user's own assignment history."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 09/18/2025
---

# accessPackageSuggestionSelfAssignmentHistoryBased resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents access package suggestions that are based on the user's own assignment history in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). This suggestion type helps users rediscover access packages they have previously been assigned to.

Inherits from [accessPackageSuggestionReason](accesspackagesuggestionreason.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|lastAssignmentDateTime|DateTimeOffset|The date and time when the user was last assigned to this access package. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|pastAssignmentCount|Int32|The number of times the user has been assigned to this access package in the past. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageSuggestionSelfAssignmentHistoryBased"
}-->

```json
{
  "@odata.type": "#microsoft.graph.accessPackageSuggestionSelfAssignmentHistoryBased",
  "pastAssignmentCount": 1024,
  "lastAssignmentDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2025-09-18 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageSuggestionSelfAssignmentHistoryBased resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->