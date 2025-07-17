---
title: "Get virtualEventWebinar"
description: "Read the properties and relationships of a virtual event webinar."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/22/2024
---

# Get virtualEventWebinar
Namespace: microsoft.graph

Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.

All roles can get the details of a webinar event.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventwebinar_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventwebinar-get-permissions.md)]

> [!NOTE]
>
> To use application permissions for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registrants' information from virtual events created by that specific user.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}
```

## Optional query parameters

This method doesn't support the OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventWebinar](../resources/virtualeventwebinar.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualeventwebinar"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-virtualeventwebinar-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-virtualeventwebinar-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-virtualeventwebinar-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualeventwebinar-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualeventwebinar-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-virtualeventwebinar-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-virtualeventwebinar-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-virtualeventwebinar-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventWebinar"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventWebinar",
    "id": "88b245ac-b0b2-f1aa-e34a-c81c27abdac2@f9448ec4-804b-46af-b810-62085248da33",
    "status": "published",
    "displayName": "The Impact of Tech on Our Lives",
    "description": "Discusses how technology has changed the way we communicate, work, and interact with each other.",
    "startDateTime": {
      "dateTime": "2023-03-30T10:00:00",
      "timeZone": "PacificSt"
    },
    "endDateTime": {
      "dateTime": "2023-03-30T17:00:00",
      "timeZone": "PacificSt"
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
}
```
