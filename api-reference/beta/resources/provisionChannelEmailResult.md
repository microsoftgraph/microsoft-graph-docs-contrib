---
title: "provisionChannelEmailResult resource type"
description: "Represents the result of a channel email provisioning operation."
author: "shantanu1singh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# provisionChannelEmailResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Includes the email address provisioned for a [channel](../resources/channel.md) by using the [provision channel email](..\api\channel-provisionemail.md) operation.

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
