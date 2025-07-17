---
title: "provisionChannelEmailResult resource type"
description: "Represents the result of a channel email provisioning operation."
author: "anandab-msft"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# provisionChannelEmailResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the email address [provisioned](..\api\channel-provisionemail.md) for a [channel](channel.md).

## Properties
| Property | Type   | Description                               |
| :------- | :----- | :---------------------------------------- |
| email    | String | Represents the provisioned email address. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
