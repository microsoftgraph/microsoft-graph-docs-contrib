---
title: "List user usageRights"
description: "Retrieve a list of usageRights objects for a user"
author: "AkshayMSFT"
localization_priority: Normal
ms.prod: "users"
doc_type: apiPageType
---

# List user usageRights
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [usageRight](../resources/usageright.md) objects for a given user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Directory.ReadWrite.All, Directory.Read.All, User.Read.All, User.ReadWrite.All, User.ReadWrite, User.Read|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Directory.ReadWrite.All, Directory.Read.All, User.ReadWrite.All, User.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{userId}/usageRights
```

## Optional query parameters
This API supports the $filter [OData query parameter](/graph/query-parameters). The following patterns of $filter are supported:

|Examples|
|:---|:---|
|$filter = state eq 'value'|
|$filter = serviceIdenfier eq 'value'|
|$filter = state eq 'value' and serviceIdentifier eq 'value'|
|$filter = state in ('value1', 'value2')|
|$filter = serviceIdenfier in ('value1', 'value2')|
|$filter = state in ('value1', 'value2') and serviceIdenfier in ('value1', 'value2')|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|odata.maxpagesize|Set the max result page size pereference. Optional.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [UsageRight](../resources/usageright.md) objects in the response body.

Additionally, if there are more pages in the response an @odata.nextLink is returned.

## Examples

### Request 1
This example shows how to get all usageRights for a user.
<!-- {
  "blockType": "request",
  "name": "list_usageright"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{userId}/usageRights
```

### Response 1
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.usageRight)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64952b80-51fd-4378-9ba5-589a840afb80')/usageRights",
      "id": "c2e034cb-3cbc-41be-a496-bfcd031e4cfc",
      "catalogId": "CFQ7TTC0KCRG:0001",
      "serviceIdentifier": "mscrm.f6d23ec7-255c-4bd8-8c99-dc041d5cb8b3.517f7ddd-df45-4f1c-83ec-a081a047f546",
      "state": "Active",
      "@odata.nextLink": "https://graph.microsoft.com/beta/users/64952b80-51fd-4378-9ba5-589a840afb80/usageRights?$skiptoken=W4diD29cGKX1bX"
    }
  ]
}
```

### Request 2
This example shows how to get usageRights for a user which have a service identifier of 'ABCD' and are in either active or suspended state.

<!-- {
  "blockType": "request",
  "name": "list_usageright"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{userId}/usageRights?$filter=state in ('active', 'suspended') and serviceIdentifier in ('ABCD')
```

### Response 2
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.usageRight)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('64952b80-51fd-4378-9ba5-589a840afb80')/usageRights",
      "id": "505261eb-b4ee-421c-8206-05529ae2c150",
      "catalogId": "CFQ7TTC0KCRG:0001",
      "serviceIdentifier": "ABCD",
      "state": "Active",
    }
  ]
}
```