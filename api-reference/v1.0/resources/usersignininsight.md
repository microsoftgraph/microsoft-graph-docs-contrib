---
title: "userSignInInsight resource type"
description: "In the Microsoft Entra access reviews, the userSignInInsight resource represents insights provided to reviewers based on the user's last sign-in date and time."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
toc.title: User sign-in insight
---

# userSignInInsight resource type

Namespace: microsoft.graph

Represents an insight provided to reviewers based on the user's last sign-in date and time.

Inherits from [governanceInsight](governanceinsight.md).

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| lastSignInDateTime | DateTimeOffset | Indicates when the user last signed in. |
| insightCreatedDateTime | DateTimeOffset | Indicates when the insight was created. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.usersignininsight",
  "baseType": "microsoft.graph.governanceInsight"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usersignininsight",
  "lastSignInDateTime": "DateTimeOffset",
  "insightCreatedDateTime": "DateTimeOffset"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "usersignininsight resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
