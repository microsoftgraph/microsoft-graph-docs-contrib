---
title: "Get assignedComputeInstanceDetails"
description: "Read the properties and relationships of an assignedComputeInstanceDetails object for an AWS open security group finding."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get assignedComputeInstanceDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object and its properties for an AWS open security group finding.


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
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails/{id}
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_assignedcomputeinstancedetails"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsNzE3MTg1/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails/YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTBkNWY1OTU5OGVkZjQzNDBl
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-assignedcomputeinstancedetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-assignedcomputeinstancedetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.assignedComputeInstanceDetails)",
    "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTBkNWY1OTU5OGVkZjQzNDBl",
    "assignedComputeInstance": {
        "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTBkNWY1OTU5OGVkZjQzNDBl",
        "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-0d5f59598edf4340e",
        "displayName": "sg-test-ami",
        "resourceType": "instance"
    },
    "accessedStorageBuckets": []
}
```
