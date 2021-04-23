---
title: "channelAllowedSenders resource type"
description: "Represents a channel's allowed senders."
author: "shsi"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelAllowedSenders resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings that can be used to control access to sending messages to a channel via the provisioned channel email address.

The [senderType](../resources/enums.md#channelEmailAllowedSenderType-values) property can be used to specify the type of senders that are allowed to send messages to the channel via the email address.

> **Note**: The `domains` property can only be used when the `senderType` property is set to `domains`.

## Properties
| Property   | Type                                                                                        | Description                                                                                   |
| :--------- | :------------------------------------------------------------------------------------------ | :-------------------------------------------------------------------------------------------- |
| senderType | [channelEmailAllowedSenderType](../resources/enums.md#channelEmailAllowedSenderType-values) | Represents the type of senders allowed to send messages to the channel.                       |
| domains    | String collection                                                                           | Represents the source email address domains that are allowed to send messages to the channel. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelEmailAllowedSenders"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelEmailAllowedSenders",
  "senderType": "channelEmailAllowedSenderType",
  "domains": [
    "String"
  ]
}
```

## See also

- To provision a channel's email address, see [Provision channel email](..\api\channel-email-provision.md).
