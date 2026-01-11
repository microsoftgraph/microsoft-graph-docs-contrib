---
title: "Get virtualEventTownhall"
description: "Read the properties and relationships of a virtualEventTownhall object."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/22/2024
---

# Get virtualEventTownhall

Namespace: microsoft.graph

Read the properties and relationships of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

All roles can get the details of a townhall event.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventtownhall_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-get-permissions.md)]

> [!NOTE]
>
> - To use application permissions with this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and assign it to a user. This allows the authorized application to access registrants' information from virtual events created by that specific user.
> - The `VirtualEvent.Read.Chat` permission uses [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/virtualEvents/townhalls/{id}
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

If successful, this method returns a `200 OK` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualeventtownhall"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-virtualeventtownhall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-virtualeventtownhall-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualeventtownhall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualeventtownhall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-virtualeventtownhall-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-virtualeventtownhall-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-virtualeventtownhall-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventTownhall"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "id": "fc6e8c15-2fd7-1dd5-caa0-87056e6a12be",
  "status": "published",
  "displayName": "The Impact of Tech on Our Lives",
  "description": {
    "content": "<p>Discusses how technology has changed the way we communicate, work, and interact with each other.</p>",
    "contentType": "html"
  },
  "startDateTime": {
    "dateTime": "2023-11-30T16:30:00",
    "timeZone": "Eastern Standard Time"
  },
  "endDateTime": {
    "dateTime": "2023-11-30T17:00:00",
    "timeZone": "Eastern Standard Time"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet",
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
  "invitedAttendees": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity",
      "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
      "displayName": "Emilee Pham",
      "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
    }
  ],
  "isInviteOnly": false,
  "externalEventInformation": [
    {
      "applicationId" : "1b7ba4d1-c377-4b2f-ad0e-a3fc50bc987b",
      "externalEventId": "myExternalEventId"
    }
  ]
}
```
