---
title: "List townhalls"
description: "Get the list of all virtualEventTownhall objects created in a tenant."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 12/09/2024
---

# List townhalls

Namespace: microsoft.graph

Get the list of all [virtualEventTownhall](../resources/virtualeventtownhall.md) objects created in a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualeventsroot_list_townhalls" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsroot-list-townhalls-permissions.md)]

> [!NOTE]
>
> This API returns only **virtualEventTownhall** objects where the organizer is assigned an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /solutions/virtualEvents/townhalls
```

## Optional query parameters

This method supports the `$count` [OData query parameter](/graph/query-parameters) to help customize the response. If you use `?$count=true` in the request URL, the response contains a root-level property that denotes the total number of the resource; for example, `"@odata.count": 6`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventTownhall](../resources/virtualeventtownhall.md) objects in the response body.

## Examples

### Request

The following example shows a request.

```http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventTownhall)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
      "invitedAttendees": [
        {
          "@odata.type": "microsoft.graph.communicationsUserIdentity",
          "id": "127962bb-84e1-7b62-fd98-1c9d39def7b6",
          "displayName": "Emilee Pham",
          "tenantId": "77229959-e479-4a73-b6e0-ddac27be315c"
        }
      ],
      "settings": {
        "isAttendeeEmailNotificationEnabled": false
      },
      "isInviteOnly": false,
      "externalEventInformation": [
        {
          "applicationId" : "1b7ba4d1-c377-4b2f-ad0e-a3fc50bc987b",
          "externalEventId": "myExternalEventId"
        }
      ]
    }
  ]
}
```
