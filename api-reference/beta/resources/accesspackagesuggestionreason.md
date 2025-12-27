---
title: "accessPackageSuggestionReason resource type"
description: "Base type for reasons why an access package is suggested to an end user."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 09/18/2025
---

# accessPackageSuggestionReason resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for reasons why an access package is suggested to an end user in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). This is an abstract type that is inherited by more specific suggestion reason types.

Base type of [accessPackageSuggestionRelatedPeopleBased](accesspackagesuggestionrelatedpeoplebased.md) and [accessPackageSuggestionSelfAssignmentHistoryBased](accesspackagesuggestionselfassignmenthistorybased.md).

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageSuggestionReason"
}-->

```json
{
  "@odata.type": "microsoft.graph.accessPackageSuggestionReason"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2025-09-18 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageSuggestionReason resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->