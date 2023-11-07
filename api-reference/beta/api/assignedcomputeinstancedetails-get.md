---
title: "Get assignedComputeInstanceDetails"
description: "Read the properties and relationships of an assignedComputeInstanceDetails object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get assignedComputeInstanceDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /openAwsSecurityGroupFinding/assignedComputeInstancesDetails/{assignedComputeInstanceDetailsId}
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

If successful, this method returns a `200 OK` response code and an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_assignedcomputeinstancedetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/openAwsSecurityGroupFinding/assignedComputeInstancesDetails/{assignedComputeInstanceDetailsId}
```


### Response
The following example shows the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.assignedComputeInstanceDetails"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.assignedComputeInstanceDetails",
    "id": "2b26ff5a-50e8-02a3-9057-2e63f27302df"
  }
}
```

