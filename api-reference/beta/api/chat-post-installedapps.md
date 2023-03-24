---
title: "Add app to chat"
description: "Install an app to chat."
author: "subray"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Add app to chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Install a [teamsApp](../resources/teamsapp.md) to the specified [chat](../resources/chat.md).

> **Notes**:
> - If the chat is associated with an [onlineMeeting](../resources/onlinemeeting.md) instance, then, effectively, the **teamsApp** will get installed to the meeting.
> - Currently, the operation of installing an app that requires RSC permissions is not supported in application context.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamsAppInstallation.ReadWriteSelfForChat<sup>1</sup>, TeamsAppInstallation.ReadWriteForChat<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentSelfForChat, TeamsAppInstallation.ReadWriteAndConsentForChat |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.Manage.Chat<sup>2</sup>, TeamsAppInstallation.ReadWriteSelfForChat.All<sup>1</sup>, TeamsAppInstallation.ReadWriteForChat.All<sup>1</sup>, TeamsAppInstallation.ReadWriteAndConsentSelfForChat.All, TeamsAppInstallation.ReadWriteAndConsentForChat.All |

> **Note**: 
<br><sup>1</sup> These permissions cannot be used for installing apps that require consent to resource-specific permissions.
<br><sup>2</sup> These permissions are [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions.

## HTTP request

<!-- {
"blockType": "ignored"
} -->

```http
POST /chats/{chat-id}/installedApps
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |

## Request body

The request body should contain the catalog app's generated app ID. For details, see [teamsApp properties](../resources/teamsapp.md#properties).

Following table shows additional parameters that can be used with the request body.

|Parameter|Type|Description|
|:---|:---|:---|
|consentedPermissionSet|[teamsAppPermissionSet](../resources/teamsapppermissionset.md)|Set of resource specific permissions that are being consented.|

> **Note**:
> The permissions consented during the install must be same as the resource-specific permissions present in the [teamsAppDefinition](../resources/teamsAppDefinition.md) of the app. Please follow this [example](../api/appcatalogs-list-teamsapps.md?view=graph-rest-beta&preserve-view=true&tabs=http#example-7-list-applications-with-a-given-id-and-return-the-resource-specific-permissions) to get the application and delegated resource-specific permissions. If there are only delegated resource-specific permissions present in teamsAppDefinition, then permissions can be omitted in the body of this request.

## Response

If successful, this method returns a `201 Created` response code.

## Examples

### Example 1: Install app in a chat

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_app_in_chat",
  "sampleKeys": ["19:ea28e88c00e94c7786b065394a61f296@thread.v2"]
}-->

```http
POST https://graph.microsoft.com/beta/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps
Content-Type: application/json

{
   "teamsApp@odata.bind":"https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-app-in-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-app-in-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-app-in-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-app-in-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/add-app-in-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-app-in-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 201 Created
```
### Example 2: Install app in a chat and and consent to the resource-specific permissions required by the app
The list of resource-specific permissions required by the app can be found by getting the app from appCatalog as shown in this [example](../api/appcatalogs-list-teamsapps.md?view=graph-rest-beta&preserve-view=true&tabs=http#example-7-list-applications-with-a-given-id-and-return-the-resource-specific-permissions).

#### Request

<!-- {
  "blockType": "request",
  "name": "add_app_in_chat",
  "sampleKeys": ["19:ea28e88c00e94c7786b065394a61f296@thread.v2"]
}-->

```http
POST https://graph.microsoft.com/beta/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps
Content-Type: application/json

{
	"teamsApp@odata.bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770",
    "consentedPermissionSet": {
        "resourceSpecificPermissions": [
        {
          "permissionValue": "OnlineMeeting.ReadBasic.Chat",
          "permissionType": "Delegated"
        },
        {
          "permissionValue": "OnlineMeetingIncomingAudio.Detect.Chat",
          "permissionType": "Delegated"
        },
        {
          "permissionValue": "ChatMember.Read.Chat",
          "permissionType": "Application"
        },
        {
          "permissionValue": "ChatMessage.Read.Chat",
          "permissionType": "Application"
        }]
      }
}
```

#### Response

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 201 Created
```

## See also
- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Request resource-specific consent for apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Chat add installedapps",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
