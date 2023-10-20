---
title: "List virtualEventWebinars"
description: "Get a list of all virtualEventWebinar objects."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List virtualEventWebinars

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all [virtualEventWebinar](../resources/virtualeventwebinar.md) objects created in the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|VirtualEvent.Read.All|

> [!NOTE]
>
> When used with Application Permissions, this API returns only the events whose organizers have been assigned an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
To list all webinars of a tenant:

``` http
GET /solutions/virtualEvents/webinars
```

## Optional query parameters

This method supports the `$count` [OData query parameter](/graph/query-parameters) to help customize the response. When (`?$count=true`) is supplied, the response has a root level property denoting the total number of the resource (for example, "@odata.count": 6).

Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventWebinar](../resources/virtualeventwebinar.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

### Response

The following is an example of the response.
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
  ]
}
```
