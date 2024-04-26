---
title: "Get virtualEventTownhall"
description: "Read the properties and relationships of a virtualEventTownhall object."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# Get virtualEventTownhall
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/townhalls/{townhallId}
```

## Optional query parameters
This method doesn't currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventTownhall](../resources/virtualeventtownhall.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventtownhall"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/townhalls/fc6e8c15-2fd7-1dd5-caa0-87056e6a12be
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventTownhall"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "id": "fc6e8c15-2fd7-1dd5-caa0-87056e6a12be",
  "status": "published",
  "displayName": "The Impact of Tech on Our Lives",
  "description": {
    "content": "Discusses how technology has changed the way we communicate, work, and interact with each other.",
    "contentType": "Html"
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
  "isInviteOnly": false
}
```
