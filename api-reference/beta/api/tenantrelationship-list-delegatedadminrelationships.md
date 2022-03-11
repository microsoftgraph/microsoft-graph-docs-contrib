---
title: "List delegatedAdminRelationships"
description: "Get a list of the delegatedAdminRelationship objects and their properties."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List delegatedAdminRelationships
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.Read.All, DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminRelationships
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminrelationship"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships
Authorization: Bearer {token}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminRelationship)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
      "id": "5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
      "displayName": "Contoso admin relationship",
      "duration": "P730D",
      "partner": {
        "@odata.type": "microsoft.graph.delegatedAdminRelationshipParticipant"
      },
      "customer": {
        "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
      },
      "accessDetails": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
      },
      "status": "active",
      "createdDateTime": "2022-02-10T11:24:42.3148266Z",
      "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z",
      "activatedDateTime": "2022-02-10T11:26:44.9941884Z",
      "endDateTime": "2024-02-10T11:24:42.3148266Z"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
      "id": "1041ef52-a99b-4245-a3be-cbd3fa7c5ed1-8777b240-c6f0-4469-9e98-a3205431b836",
      "displayName": "Contoso support relationship",
      "duration": "P30D",
      "partner": {
        "@odata.type": "microsoft.graph.delegatedAdminRelationshipParticipant"
      },
      "customer": {
        "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
      },
      "accessDetails": {
        "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
      },
      "status": "terminated",
      "createdDateTime": "2021-09-29T16:52:39.6133896Z",
      "lastModifiedDateTime": "2021-09-29T16:57:20.2101088Z",
      "activatedDateTime": "2021-09-29T16:57:20.2101088Z",
      "endDateTime": "2021-09-30T13:22:20.3301097Z"
    }
  ]
}
```

