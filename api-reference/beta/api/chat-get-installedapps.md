---
title: "Get installed app in chat"
description: "Get installed app in a chat."
author: "subray"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Get installed app in chat

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [app](../resources/teamsappinstallation.md) installed in a [chat](../resources/chat.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chat_get_installedapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/chat-get-installedapps-permissions.md)]

> [!NOTE]
> The TeamsAppInstallation.Read.Chat and Chat.Manage.Chat permissions use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## HTTP request

<!-- {
"blockType": "ignored"
} -->

```http
GET /chats/{chat-id}/installedApps/{app-installation-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a [teamsAppInstallation](../resources/teamsappinstallation.md) object in the response body.

## Examples

### Example 1: Get the app installed in the specified chat

The following example gets an app installed in the specified chat.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_installedApps_in_chat",  
  "sampleKeys": ["19:d65713bc498c4a428c71ef9353e6ce20@thread.v2", "MTk6ZDY1NzEzYmM0OThjNGE0MjhjNzFlZjkzNTNlNmNlMjBAdGhyZWFkLnYyIyMwMDAwMTAxNi1kZTA1LTQ5MmUtOTEwNi00ODI4ZmM4YTg2ODc="]

}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19:d65713bc498c4a428c71ef9353e6ce20@thread.v2/installedApps/MTk6ZDY1NzEzYmM0OThjNGE0MjhjNzFlZjkzNTNlNmNlMjBAdGhyZWFkLnYyIyMwMDAwMTAxNi1kZTA1LTQ5MmUtOTEwNi00ODI4ZmM4YTg2ODc=
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-installedapps-in-chat-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-installedapps-in-chat-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-installedapps-in-chat-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-installedapps-in-chat-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-installedapps-in-chat-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-installedapps-in-chat-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-installedapps-in-chat-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-installedapps-in-chat-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAppInstallation"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#chats('19%3Ad65713bc498c4a428c71ef9353e6ce20%40thread.v2')/installedApps/$entity",
    "id": "MTk6ZDY1NzEzYmM0OThjNGE0MjhjNzFlZjkzNTNlNmNlMjBAdGhyZWFkLnYyIyMwMDAwMTAxNi1kZTA1LTQ5MmUtOTEwNi00ODI4ZmM4YTg2ODc="
}
```
### Example 2: Get the set of resource-specific permissions consented for the app installed in the specified chat

The following example gets the list of any [resource-specific permissions that were granted to an app](../resources/teamsapppermissionset.md) as part of installation. A `$select` query parameter is required to show the consented permission set.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_installedApps_in_chat_select_consentedPermissionSet",
  "sampleKeys": ["19%5bd86ec7f6b247d3b9e519b0bfef5d03%40thread.v2", "MTk6NWJkODZlYzdmNmIyNDdkM2I5ZTUxOWIwYmZlZjVkMDNAdGhyZWFkLnYyIyMyYjUyNGUyOC05NWNlLTRjOWItOTc3My00YTViZDZlYzE3NzA="]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/chats/19%5bd86ec7f6b247d3b9e519b0bfef5d03%40thread.v2/installedApps/MTk6NWJkODZlYzdmNmIyNDdkM2I5ZTUxOWIwYmZlZjVkMDNAdGhyZWFkLnYyIyMyYjUyNGUyOC05NWNlLTRjOWItOTc3My00YTViZDZlYzE3NzA=?$select=consentedPermissionSet,id
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-installedapps-in-chat-select-consentedpermissionset-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-installedapps-in-chat-select-consentedpermissionset-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-installedapps-in-chat-select-consentedpermissionset-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-installedapps-in-chat-select-consentedpermissionset-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-installedapps-in-chat-select-consentedpermissionset-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-installedapps-in-chat-select-consentedpermissionset-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-installedapps-in-chat-select-consentedpermissionset-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-installedapps-in-chat-select-consentedpermissionset-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "get_installedApps_in_chat_select_consentedPermissionSet",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAppInstallation",
  "isCollection": false
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/chats('19%3A5bd86ec7f6b247d3b9e519b0bfef5d03%40thread.v2')/installedApps(consentedPermissionSet,id)/$entity",
    "id": "MTk6NWJkODZlYzdmNmIyNDdkM2I5ZTUxOWIwYmZlZjVkMDNAdGhyZWFkLnYyIyMyYjUyNGUyOC05NWNlLTRjOWItOTc3My00YTViZDZlYzE3NzA=",
    "consentedPermissionSet": {
        "resourceSpecificPermissions": [
            {
                "permissionValue": "OnlineMeeting.ReadBasic.Chat",
                "permissionType": "delegated"
            },
            {
                "permissionValue": "OnlineMeetingIncomingAudio.Detect.Chat",
                "permissionType": "delegated"
            }
        ]
    }
}
```
## Related content
- [List apps in catalog](appcatalogs-list-teamsapps.md)
- [Request resource-specific consent for apps](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Chat get installedapps",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
