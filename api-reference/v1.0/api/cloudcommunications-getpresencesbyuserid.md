---
title: "cloudCommunications: getPresencesByUserId"
description: "Get the presence information for multiple users."
author: "awang119"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "cloud-communications"
ms.date: 04/04/2024
---

# cloudCommunications: getPresencesByUserId

Namespace: microsoft.graph

Get the [presence](../resources/presence.md) information for multiple users.

> **Note:**
> This API allows users to subscribe only to another user's presence. If an application wants to subscribe to presence information for all users, it uses fictitious users to create the subscription to collect the required data.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudcommunications_getpresencesbyuserid" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudcommunications-getpresencesbyuserid-permissions.md)]

> **Note:**
>
> * Maximum of 650 user IDs are supported per API request.
> * The maximum request rate of this API is 1500 API requests in a 30 second period, per application per tenant.

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /communications/getPresencesByUserId
```

## Request Headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-type | application/json. Required. |


## Request body

In the request body, provide a JSON object with the following parameter.

| Parameter      | Type    |Description|
|:---------------|:--------|:----------|
|ids|String collection|The user object IDs.|

## Response

If successful, this method returns a `200 OK` response code and a collection of [presence](../resources/presence.md) objects in the response body.


## Examples

### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-presence-multiple-users"
}-->

```http
POST https://graph.microsoft.com/v1.0/communications/getPresencesByUserId
Content-Type: application/json

{
	"ids": ["fa8bf3dc-eca7-46b7-bad1-db199b62afc3", "66825e03-7ef5-42da-9069-724602c31f6b"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-presence-multiple-users-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-presence-multiple-users-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-presence-multiple-users-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-presence-multiple-users-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-presence-multiple-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-presence-multiple-users-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-presence-multiple-users-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-presence-multiple-users-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

> **Note:** The response objects might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get-presence-multiple-users",
  "truncated": "true",
  "@odata.type": "microsoft.graph.presence"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1574

{
	"value": [{
			"id": "fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
			"availability": "Busy",
			"activity": "InAMeeting"
		},
		{
			"id": "66825e03-7ef5-42da-9069-724602c31f6b",
			"availability": "Away",
			"activity": "Away"
		}
	]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List Presence Information",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

## Related content
- [Get change notifications for presence updates in Microsoft Teams](/graph/changenotifications-for-presence)
