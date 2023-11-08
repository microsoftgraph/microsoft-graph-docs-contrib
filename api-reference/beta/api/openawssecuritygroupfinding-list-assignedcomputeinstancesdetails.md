---
title: "List assignedComputeInstanceDetails"
description: "Get a list of the assignedComputeInstanceDetails objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List assignedComputeInstanceDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) objects and their properties.

Not implemented.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /openAwsSecurityGroupFinding/assignedComputeInstancesDetails
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_assignedcomputeinstancedetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/openAwsSecurityGroupFinding/assignedComputeInstancesDetails
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.assignedComputeInstanceDetails)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.assignedComputeInstanceDetails",
      "id": "2b26ff5a-50e8-02a3-9057-2e63f27302df"
    }
  ]
}
```

