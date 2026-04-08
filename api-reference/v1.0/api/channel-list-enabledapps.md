---
title: "List enabledApps"
description: "Get a list of the enabled apps in the specified channel within a team."
author: "devjha-ms"
ms.date: 03/16/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List enabledApps

Namespace: microsoft.graph

Get a list of the [enabled apps](../resources/teamsapp.md) in the specified [channel](../resources/channel.md) within a [team](../resources/team.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_list_enabledapps" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-list-enabledapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /teams/{team-id}/channels/{channel-id}/enabledApps
```

## Optional query parameters

This method supports the `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamsApp](../resources/teamsapp.md) objects in the response body. The response also includes the **@odata.id** property which can be used to access the **teamsApp** and run other operations on the [teamsApp](../resources/teamsapp.md) object.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_channel_enabledapps",
  "sampleKeys": ["893075dd-2487-4122-925f-022c42e20265", "19:561fbdbbfca848a3a8df3ffe558b1c1@thread.tacv2"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/teams/893075dd-2487-4122-925f-022c42e20265/channels/19:561fbdbbfca848a3a8df3ffe558b1c1@thread.tacv2/enabledApps
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-channel-enabledapps-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamsApp)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsApp",
      "@odata.id": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "externalId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "displayName": "Sample App 1",
      "distributionMethod": "organization"
    },
    {
      "@odata.type": "#microsoft.graph.teamsApp",
      "@odata.id": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/c21ba739-90e0-462b-bc10-5c235ae55e99",
      "id": "c21ba739-90e0-462b-bc10-5c235ae55e99",
      "externalId": "c21ba739-90e0-462b-bc10-5c235ae55e88",
      "displayName": "Sample App 2",
      "distributionMethod": "organization"
    }
  ]
}
```
