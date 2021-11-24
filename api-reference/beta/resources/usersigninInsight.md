---
title: "usersignininsight resource type"
description: "In the Azure AD access reviews feature, the `usersignininsight` represents a type of insight included in the review."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# usersignininsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **usersignininsight** model represents an insight for reviewers based on the user's last sign in date time.

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| lastSignInDateTime | DateTimeOffset | Indicates when the user last signed in |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.usersignininsight"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usersignininsight",
  "lastSignInDateTime": "DateTimeOffset"
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
