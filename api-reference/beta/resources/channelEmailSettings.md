---
title: "channelEmailSettings resource type"
description: "Represents a channel's email settings."
author: "shsi"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelEmailSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Teams, users can set up a *system generated* email address for a Channel that can be used to send messages to a Channel via the email address.

By default, a channel does not have an email address provisioned. Once an email address has been provisioned, it can be used to post messages to the channel by sending an email to the generated address.

The [allowedSenders](channelEmailAllowedSenders.md) property of channel email settings can be used to control access to sending messages to a channel via the provisioned email address.

## Properties
| Property       | Type                                                        | Description                                                                                |
| :------------- | :---------------------------------------------------------- | :----------------------------------------------------------------------------------------- |
| allowedSenders | [channelEmailAllowedSenders](channelEmailAllowedSenders.md) | Used to control access to sending messages to a channel via the provisioned email address. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelEmailSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelEmailSettings",
  "allowedSenders": "channelEmailAllowedSenders",
}
```

## See also

- To provision a channel's email address, see [Provision channel email](..\api\channel-email-provision.md).
