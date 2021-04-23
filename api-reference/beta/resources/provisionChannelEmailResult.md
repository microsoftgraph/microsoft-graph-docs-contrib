---
title: "provisionChannelEmailResult resource type"
description: "Represents the result of a channel email provisioning operation."
author: "shsi"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# provisionChannelEmailResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of the operation [Provision channel email](..\api\channel-provisionemail.md).

## Properties
| Property | Type   | Description                               |
| :------- | :----- | :---------------------------------------- |
| email    | String | Represents the provisioned email address. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.provisionChannelEmailResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.provisionChannelEmailResult",
  "email": "String"
}
```

## See also

- To provision a channel's email address, see [Provision channel email](..\api\channel-provisionemail.md).
