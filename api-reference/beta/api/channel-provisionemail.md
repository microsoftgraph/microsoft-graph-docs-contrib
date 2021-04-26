---
title: "Provision channel email"
description: "Provision a channel's email."
author: "shantanu1singh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Provision channel email

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provision email for a [channel](../resources/channel.md).
In Microsoft Teams, users can set up a *system generated* email address for a Channel that can be used to send messages to a Channel via the email address.

By default, an email address is not provisioned for a Channel.

To remove a channel's provisioned email address, use the API to [remove channel email](channel-removeemail.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                 |
| :------------------------------------- | :-------------------------------------------------------------------------- |
| Delegated (work or school account)     | ChannelSettings.ReadWrite.All, Group.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                              |
| Application                            | Not supported.                                                              |

> **Note**: This API currently does not support admin permissions.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{id}/channels/{id}/provisionEmail
```
## Request headers
| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, supply a JSON representation of [channelEmailSettings](../resources/channelemailsettings.md) object.
```JSON
{
  "emailSettings": {
    "allowedSenders": {
      "senderType": "domains",
      "domains": [
        "microsoft.com",
        "hotmail.com"
      ]
    }
  }
}
```

## Response

If the channel's email is provisioned successfully, this method returns a `200 OK` response code. The response will also contain the provisioned email address in the `email` property of the [provisionChannelEmailResult](../resources/provisionChannelEmailResult.md).

## Example
#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "channel_provisionemail"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2/provisionEmail


Content-Type: application/json
Content-length: 90
{
  "emailSettings": {
    "allowedSenders": {
      "senderType": "domains",
      "domains": [
        "microsoft.com",
        "hotmail.com"
      ]
    }
  }
}
```

#### Response
The following is an example of a response.
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.provisionChannelEmailResult"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.provisionChannelEmailResult"
    "email": "1df8f174.teamsgraph.onmicrosoft.com@amer.teams.ms"
}
```
<!-- uuid: e848414b-4669-4484-ac36-1504c58a3fb8
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Provision channel email",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


