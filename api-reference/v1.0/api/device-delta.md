---
title: "device: delta"
description: "Get created, updated, or deleted devices without performing a full read of the entire resource collection."
ms.localizationpriority: medium
author: "msdhou"
ms.prod: "directory-management"
doc_type: apiPageType
---

# device: delta

Namespace: microsoft.graph

Get newly created, updated, or deleted devices without performing a full read of the entire resource collection. For more information, see [Using delta query](/graph/delta-query-overview).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Device.Read.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Device.Read.All |

## HTTP request
To begin tracking changes, you make a request including the delta function on the **device** resource. 

<!-- { "blockType": "ignored" } -->
```http
GET /devices/delta
```

## Query parameters

Tracking changes incurs a round of one or more **delta** function calls. To use any query parameter other than `$deltatoken` and `$skiptoken`, you must specify it in the initial **delta** request and Microsoft Graph automatically encodes any specified parameters into the `$deltatoken` portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same resource collection, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating that there are further changes to be tracked in the same resource collection. |

### Optional query parameters

This method supports OData query parameters to help customize the response.

- You can use the `$select` query parameter to specify only the properties your need for best performance. The **id** property is always returned.
- There is limited support for `$filter`. The only supported `$filter` expression is for tracking changes for specific resources, by their ID:  `$filter=id+eq+'{value}'` or `$filter=id+eq+'{value1}'+or+id+eq+'{value2}'`. The number of IDs you can specify is limited by the maximum URL length.


## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt;. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [device](../resources/device.md) objects in the response body. The response also includes a `@odata.nextLink` URL or a `@odata.deltaLink` URL.

- If a `@odata.nextLink` URL is returned, there are additional pages of data to be retrieved in the session. The device continues making requests using the `@odata.nextLink` URL until a `@odata.deltaLink` URL is included in the response.
- If a `@odata.deltaLink` URL is returned, there is no more data about the existing state of the resource to be returned. Persist and use the `@odata.deltaLink` URL to learn about changes to the resource in the future.

For more informantion, see [Using delta query](/graph/delta-query-overview). For example requests, see [Get incremental changes for users](/graph/delta-query-users).

## Example
### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "device_delta"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/devices/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/device-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/device-delta-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/device-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/device-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/device-delta-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- { 
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.device",
  "isCollection": true 
} --> 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#devices",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/devices/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "accountEnabled": false,
      "createdDateTime": "2022-05-05T20:56:06Z",
      "deviceId": "4c299165-6e8f-4b45-a5ba-c5d250a707ff",
      "displayName": "Test device",
      "operatingSystem": "linux",
      "operatingSystemVersion": "1",
      "id": "c9d9f9b3-0c91-4080-b392-78f775903b3a",
      "alternativeSecurityIds": [
        {
          "type": 2,
          "identityProvider": null,
          "key": "base64Y3YxN2E1MWFlYw=="
        }
      ]
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "device: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

