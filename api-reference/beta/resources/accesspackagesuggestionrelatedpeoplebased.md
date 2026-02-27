---
title: "accessPackageSuggestionRelatedPeopleBased resource type"
description: "Represents access package suggestions based on related people insights, including related user identities."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 09/18/2025
---

# accessPackageSuggestionRelatedPeopleBased resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents access package suggestions that are based on related people insights in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). This suggestion type includes information about related users who may have access to similar resources, helping to provide contextual suggestions to end users.

Inherits from [accessPackageSuggestionReason](accesspackagesuggestionreason.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|relatedPeople|Collection([identity](identity.md))|A collection of identities representing people related to the current user who may have access to similar resources. This property is only populated when the tenant's endUserSettings have `relatedPeopleInsightLevel` set to `countAndNames`. This includes both the user ID and display name information.|
|relatedPeopleAssignmentCount|Int32|The number of related people who have assignments to this access package. This count is always provided regardless of the `relatedPeopleInsightLevel` setting.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageSuggestionRelatedPeopleBased"
}-->

```json
{
  "@odata.type": "#microsoft.graph.accessPackageSuggestionRelatedPeopleBased",
  "relatedPeopleAssignmentCount": 1024,
  "relatedPeople": [
    {
      "@odata.type": "microsoft.graph.identity",
      "id": "string",
      "displayName": "string"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2025-09-18 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageSuggestionRelatedPeopleBased resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->