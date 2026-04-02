---
title: "Add teamsApp"
description: "Add a teamsApp that enables an app in the specified channel within a team."
author: "devjha-ms"
ms.date: 03/16/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Add teamsApp

Namespace: microsoft.graph

Add a [teamsApp](../resources/teamsapp.md) that enables an [app](../resources/teamsapp.md) in the specified [channel](../resources/channel.md) within a [team](../resources/team.md). This operation is allowed only for channels with a **membershipType** value of `shared`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "channel_post_enabledapps"
}
-->

[!INCLUDE [permissions-table](../includes/permissions/channel-post-enabledapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /teams/{team-id}/channels/{channel-id}/enabledApps/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object that contains an **@odata.id** property with a reference by ID to a [teamsApp](../resources/teamsapp.md) object.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_channel_enabledapps",
  "sampleKeys": ["893075dd-2487-4122-925f-022c42e20265", "19:561fbdbbfca848a3a8df3ffe558b1c1@thread.tacv2", "b1c5353a-7aca-41b3-830f-27d5218fe0e5"]
}
-->

``` http
POST https://graph.microsoft.com/v1.0/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a3a8df3ffe558b1c1@thread.tacv2/enabledApps/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/b1c5353a-7aca-41b3-830f-27d5218fe0e5"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
