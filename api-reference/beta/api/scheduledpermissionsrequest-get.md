---
title: "Get scheduledPermissionsRequest"
description: "Read the properties and relationships of a scheduledPermissionsRequest object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get scheduledPermissionsRequest
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}
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

If successful, this method returns a `200 OK` response code and a [scheduledPermissionsRequest](../resources/scheduledpermissionsrequest.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_scheduledpermissionsrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.scheduledPermissionsRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.scheduledPermissionsRequest",
    "id": "321b671b-9b57-b38d-b97b-5ec43abf3b5a",
    "requestedPermissions": {
      "@odata.type": "microsoft.graph.permissionsDefinition"
    },
    "notes": "String",
    "justification": "String",
    "createdDateTime": "String (timestamp)",
    "scheduleInfo": {
      "@odata.type": "microsoft.graph.requestSchedule"
    },
    "ticketInfo": {
      "@odata.type": "microsoft.graph.ticketInfo"
    },
    "statusDetail": "String"
  }
}
```

