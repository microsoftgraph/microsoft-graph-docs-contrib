---
title: "callRoute resource type"
description: "Represents the call route type."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callRoute resource type

Namespace: microsoft.graph

Represents the call route type.

## Properties

| Property            | Type                          | Description                                                  |
| :------------------ | :---------------------------- | :----------------------------------------------------------- |
| final               | [identitySet](identityset.md) | The identity that was resolved to in the call.               |
| original            | [identitySet](identityset.md) | The identity that was originally used in the call.           |
| routingType         | String                        | Possible values are: `forwarded`, `lookup`, `selfFork`.  |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRoute"
}-->
```json
{
  "final": {"@odata.type": "#microsoft.graph.identitySet"},
  "original": {"@odata.type": "#microsoft.graph.identitySet"},
  "routingType": "forwarded | lookup | selfFork"
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "callRoute resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

