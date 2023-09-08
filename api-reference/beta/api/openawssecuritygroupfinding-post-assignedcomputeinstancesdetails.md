---
title: "Create assignedComputeInstanceDetails"
description: "Create a new assignedComputeInstanceDetails object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create assignedComputeInstanceDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.

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
POST /openAwsSecurityGroupFinding/assignedComputeInstancesDetails
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.

You can specify the following properties when creating an **assignedComputeInstanceDetails**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|



## Response

If successful, this method returns a `201 Created` response code and an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_assignedcomputeinstancedetails_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/openAwsSecurityGroupFinding/assignedComputeInstancesDetails
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.assignedComputeInstanceDetails"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.assignedComputeInstanceDetails"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.assignedComputeInstanceDetails",
  "id": "2b26ff5a-50e8-02a3-9057-2e63f27302df"
}
```

