---
title: "cloudRealtimeCommunicationInfo resource type"
description: "Microsoft realtime communication information related to the user."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "directory-management"
author: "rungari"
---

# cloudRealtimeCommunicationInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Group of properties that relate to Microsoft realtime communication information related to a user.

## Properties

| Property                    | Type     | Description                                                                                      |
| --------------------------- | -------- | ------------------------------------------------------------------------------------------------ |
| isSipEnabled                | Boolean  | Indicates if  the user has a SIP enabled client registered for them. This property is read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.cloudRealtimeCommunicationInfo"
}-->

```json
{
  "isSipEnabled": false,
}
```
