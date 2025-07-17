---
title: "List webinars"
description: "Get the list of all virtualEventWebinar objects created in a tenant."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/08/2024
---

# List webinars

Namespace: microsoft.graph

Get the list of all [virtualEventWebinar](../resources/virtualeventwebinar.md) objects created in a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualevents_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-list-webinars-permissions.md)]

> [!NOTE]
>
> This API returns only webinars whose organizer has been assigned an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /solutions/virtualEvents/webinars
```

## Optional query parameters

This method supports the `$count` [OData query parameter](/graph/query-parameters) to help customize the response. If you use `?$count=true` in the request URL, the response contains a root-level property that denotes the total number of the resource; for example: `"@odata.count": 6`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventWebinar](../resources/virtualeventwebinar.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_virtualeventwebinars"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-virtualeventwebinars-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-virtualeventwebinars-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-virtualeventwebinars-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-virtualeventwebinars-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-virtualeventwebinars-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-virtualeventwebinars-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-virtualeventwebinars-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-virtualeventwebinars-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventWebinar)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventWebinar",
      "id": "88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33",
      "status": "published",
      "displayName": "The Impact of Tech on Our Lives",
      "description": "Discusses how technology has changed the way we communicate, work, and interact with each other.",
      "startDateTime": {
        "dateTime": "2023-03-30T10:00:00",
        "timeZone": "Pacific Standard Time"
      },
      "endDateTime": {
        "dateTime": "2023-03-30T17:00:00",
        "timeZone": "Pacific Standard Time"
      },
      "createdBy": {
        "application": null,
        "device": null,
        "user": {
          "@odata.type": "#microsoft.graph.communicationsUserIdentity",
          "id": "b7ef013a-c73c-4ec7-8ccb-e56290f45f68",
          "displayName": "Diane Demoss",
          "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
        }
      },
      "audience": "everyone",
      "coOrganizers": [
        {
          "id": "7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b",
          "displayName": "Kenneth Brown",
          "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
        }
      ],
      "settings": {
        "isAttendeeEmailNotificationEnabled": false
      },
      "externalEventInformation": [
        {
          "applicationId" : "67a527ba-ef0e-4ba2-88b6-4fa5e9711757",
          "externalEventId": "myExternalEventId"
        }
      ]
    }
  ]
}
```
