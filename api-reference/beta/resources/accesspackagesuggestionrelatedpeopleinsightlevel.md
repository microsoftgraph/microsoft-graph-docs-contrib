---
title: "accessPackageSuggestionRelatedPeopleInsightLevel enum type"
description: "Defines the level of related people information returned for access package suggestions."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "enumPageType"
ms.date: 09/18/2025
---

# accessPackageSuggestionRelatedPeopleInsightLevel enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the level of related people information that is returned for access package suggestions in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). This setting controls how much detail about related people is provided when suggesting access packages to end users.

## Members

| Member             | Value | Description                                                        |
|:-------------------|:------|:-------------------------------------------------------------------|
| disabled           | 0     | No related people insights are provided with suggestions.         |
| count              | 1     | Only the count of related people is provided with suggestions.    |
| countAndNames      | 2     | Both the count and names of related people are provided.          |
| unknownFutureValue | 999   | Evolvable enumeration sentinel value. Don't use.                  |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageSuggestionRelatedPeopleInsightLevel"
}-->

```json
{
  "@odata.type": "#microsoft.graph.accessPackageSuggestionRelatedPeopleInsightLevel"
}
```