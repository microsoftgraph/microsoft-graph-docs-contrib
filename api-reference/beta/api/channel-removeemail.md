---
title: "Remove channel email"
description: "Remove a channel's provisioned email."
author: "shsi"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Remove channel email

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove the provisioned email of a [channel](../resources/channel.md).
In Microsoft Teams, users can set up a *system generated* email address for a Channel that can be used to send messages to a Channel via the email address.

To remove a channel's provisioned email address, it must have first been provisioned using the API to [provision channel email](channel-provisionemail.md).

> **Note**: This API is currently not supported for shared channels.

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
POST /teams/{id}/channels/{id}/removeEmail
```
## Request headers
| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Example
#### Request
<!-- {
  "blockType": "request",
  "name": "channel_removeemail"
}
-->
```http
POST https://graph.microsoft.com/beta/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a484f0a6f00ce9dbbd@thread.tacv2/removeEmail
```

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
<!-- uuid: e848414b-4669-4484-ac36-1504c58a3fb8
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Remove channel email",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


