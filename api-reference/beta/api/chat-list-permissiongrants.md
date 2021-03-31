---
title: "List permission grants of a chat"
description: "Retrieve permission grants of a chat."
author: "akjo"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List permission grants of a chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all [resource-specific permission grants](../resources/resourcespecificpermissiongrant.md) on the [chat](../resources/chat.md). This is a list of all the Azure AD apps that have access to the chat along with the kind of access of that each of the apps has. 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission Type                        | Permissions (from least to most privileged)                                                                                                                                                        |
| :------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | ResourceSpecificPermissionGrant.ReadForChat, TeamsAppInstallation.ReadForChat, TeamsAppInstallation.ReadWriteSelfForChat, TeamsAppInstallation.ReadWriteForChat                                    |
| Delegated (personal Microsoft account) | Not supported.                                                                                                                                                                                     |
| Application                            | Chat.Manage.Chat*, ResourceSpecificPermissionGrant.ReadForChat.All, TeamsAppInstallation.ReadForChat.All, TeamsAppInstallation.ReadWriteSelfForChat.All, TeamsAppInstallation.ReadWriteForChat.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /chats/{chat-id}/permissionGrants
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
| Authorization    | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [resourceSpecificPermissionGrant](../resources/resourcespecificpermissiongrant.md) objects in the response body.

## Example

#### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chat_list_permission_grants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:089ac694c48647c68035aae675cf78ab@thread.v2/permissionGrants
```

---

#### Response

Here is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.resourcespecificpermissiongrant"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#permissionGrants",
    "value": [
        {
            "id": "9dg6L58jVyQ0hCE8azOfuU1BeV7i0I_tk0G9dS-yUyY",
            "deletedDateTime": null,
            "clientId": "cd963cfe-1272-4873-9089-87dfa732c860",
            "clientAppId": "865cba6f-98a4-4c51-830a-a9f2fee6462f",
            "resourceAppId": "00000003-0000-0000-c000-000000000000",
            "permissionType": "Application",
            "permission": "ChatMember.Read.Chat"
        },
        {
            "id": "c7iB1L9bPD5NdAM5qlrF49Gow55_KZlUrUmUpBkruL8",
            "deletedDateTime": null,
            "clientId": "cd963cfe-1272-4873-9089-87dfa732c860",
            "clientAppId": "865cba6f-98a4-4c51-830a-a9f2fee6462f",
            "resourceAppId": "00000003-0000-0000-c000-000000000000",
            "permissionType": "Application",
            "permission": "TeamsTab.Read.Chat"
        },
        {
            "id": "F-ieiIOPENMTunE3ok2LLDIKRuEIhVGTu19s9x0T7tg",
            "deletedDateTime": null,
            "clientId": "c5d99c29-0567-4305-adb8-887470b308f3",
            "clientAppId": "4623ae0b-ef35-4738-b117-ae06cbcd3e3b",
            "resourceAppId": "00000003-0000-0000-c000-000000000000",
            "permissionType": "Application",
            "permission": "ChatMessage.Read.Chat"
        }
    ]
}
```
