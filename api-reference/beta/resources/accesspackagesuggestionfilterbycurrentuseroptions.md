---
title: "accessPackageSuggestionFilterByCurrentUserOptions enum type"
description: "Defines the filter options for retrieving access package suggestions for the current user."
ms.localizationpriority: medium
author: "myra-ramdenbourg"
ms.subservice: "entra-id-governance"
doc_type: "enumPageType"
ms.date: 09/18/2025
---

# accessPackageSuggestionFilterByCurrentUserOptions enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the filter options for retrieving access package suggestions for the current user in [Microsoft Entra entitlement management](entitlementmanagement-overview.md). This enum specifies which types of suggestions to include in the response.

## Members

| Member                    | Value | Description                                                                                           |
|:--------------------------|:------|:------------------------------------------------------------------------------------------------------|
| all                       | 0     | Returns all available suggestion types including related people and assignment history-based suggestions. |
| assignmentHistory         | 1     | Returns only suggestions based on the user's own assignment history.                                |
| relatedPeopleAssignments  | 2     | Returns only suggestions based on access packages that related people have assignments to.          |
| unknownFutureValue        | 999   | Evolvable enumeration sentinel value. Don't use.                                                    |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageSuggestionFilterByCurrentUserOptions"
}-->

```json
{
  "@odata.type": "#microsoft.graph.accessPackageSuggestionFilterByCurrentUserOptions"
}
```