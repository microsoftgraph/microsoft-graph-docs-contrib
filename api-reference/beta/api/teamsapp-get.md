---
title: "Get teamsApp"
description: "Get the details of the enabled apps in the specified channel within a team."
author: "devjha-ms"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get teamsApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of the [enabled apps](../resources/teamsapp.md) in the specified [channel](../resources/channel.md) within a [team](../resources/team.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsapp-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsapp-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/channels/{channelId}/enabledApps/{teamsAppId}
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamsApp](../resources/teamsapp.md) object in the response body. The response also includes the **@odata.id** property which can be used to access the **teamsApp** and run other operations on the [teamsApp](../resources/teamsApp.md) object.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_teamsapp"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/92a32d60-8819-41a5-93f1-4e7ab675a84c/channels/19:EXBxA86mdj8ToATNBzN8FcaJFeMgxM3abqoOF9WRVaI1@thread.tacv2/enabledApps/7fffdd9a-eb41-37e0-be9b-0bfc89302cb2
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsApp"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamsApp",
  "@odata.id": "https://graph.microsoft.com/beta/appCatalogs/teamsApps/7fffdd9a-eb41-37e0-be9b-0bfc89302cb2",
  "id": "7fffdd9a-eb41-37e0-be9b-0bfc89302cb2",
  "externalId": null,
  "displayName": "Sample App",
  "distributionMethod": "store"
}
```

