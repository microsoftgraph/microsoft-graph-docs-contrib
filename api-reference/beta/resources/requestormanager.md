---
title: "requestorManager resource type"
description: "Identifies a relationship to another user in the tenant who will be allowed as approver."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# requestoManager resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the approval settings of an [access package assignment policy](accesspackageassignmentpolicy.md). Indicates that a requesting user's manager is to be the approver.

## Properties


| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value `#microsoft.graph.requestorManager`. |
| isBackup | Boolean | For a manager in an approval stage, indicates whether the manager is a backup fallback approver. |

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "requestorManager complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
