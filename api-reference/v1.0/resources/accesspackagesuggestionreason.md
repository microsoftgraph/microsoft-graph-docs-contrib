---
title: "accessPackageSuggestionReason resource type"
description: "Base type for reasons why an access package is suggested to an end user."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 05/14/2026
---

# accessPackageSuggestionReason resource type

Namespace: microsoft.graph

Base type for **reasons** why an [access package is suggested](../resources/accesspackagesuggestion.md) to an end user in [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md). This is an abstract type that is inherited by more specific suggestion reason types.

Base type of [accessPackageSuggestionRelatedPeopleBased](../resources/accesspackagesuggestionrelatedpeoplebased.md) and [accessPackageSuggestionSelfAssignmentHistoryBased](../resources/accesspackagesuggestionselfassignmenthistorybased.md).

In entitlement management, this object is configured in the **reasons** property of [accessPackageSuggestion](../resources/accesspackagesuggestion.md).

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
2026-05-14 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageSuggestionReason resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
