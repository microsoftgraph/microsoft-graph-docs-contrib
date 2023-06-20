---
title: "List logs"
description: "Retrieve a list of traffic log events."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List logs
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of traffic log events.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.networkaccess.logs not found
```

## Optional query parameters
This method supports the $expand [OData query parameters](https://learn.microsoft.com/graph/query-parameters) to help customize the response.

|Pattern|Syntax|Notes
|:---|:---|:---|
|Server-side pagination|@odata.nextLink=https://graph.microsoft.com/v1.0/networkAccess/logs/traffic?$skiptoken="generatedtoken"|Page size default and limit is 1000.|
|Filter|/logs/traffic?$filter=connectionId eq 'a812bcdc-aa36-4c51-b70d-20a84f0ce556'|All properties are filterable.|
|Sort|/logs/traffic?$orderby=createdDateTime desc|Can order by all properties.|
|Top|/logs/traffic?$top=50|Max value 1000.|
|Select|/logs/traffic?$select=transactionId,connectionId,createdDateTime|Select properties.|
|Expand|/logs/traffic?$expand=policy,policyRule|policy and policyRule are auto-expanded.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [logs](../resources/networkaccess-logs.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_logs"
}
-->
``` http
GET /networkAccess/logs
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.logs)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.logs",
      "id": "91cc7fd8-f9af-976b-931b-9afd10810c91"
    }
  ]
}
```

