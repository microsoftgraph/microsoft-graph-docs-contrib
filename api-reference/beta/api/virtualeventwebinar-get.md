---
title: "Get virtualEventWebinar"
description: "Read the properties and relationships of a virtualEventWebinar object."
author: "**TODO: add PM alias**"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get virtualEventWebinar

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|VirtualEvent.Read|
|Delegated (personal Microsoft account)|Not supported.|
|Application|VirtualEvent.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}
```

## Optional query parameters

This method does not support the OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualEventWebinar](../resources/virtualeventwebinar.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventwebinar"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/webinars/{webinarId}
```

### Response

The following is an example of the response
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
    ]
  }
}
```
