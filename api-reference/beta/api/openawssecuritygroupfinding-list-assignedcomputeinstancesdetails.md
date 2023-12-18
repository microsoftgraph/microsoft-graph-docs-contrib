---
title: "List assignedComputeInstanceDetails"
description: "Get a list of the assignedComputeInstanceDetails objects and their properties for an AWS open security group finding."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List assignedComputeInstanceDetails
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) objects and their properties for an AWS open security group finding.

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
GET /identityGovernance/permissionsAnalytics/aws/findings('id')/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails
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

If successful, this method returns a `200 OK` response code and a collection of [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_assignedcomputeinstancedetails"
}
-->
``` http
GET  https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsNzE3MTg1/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-assignedcomputeinstancedetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-assignedcomputeinstancedetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


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
    "@odata.context": "https://canary.graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.assignedComputeInstanceDetails)",
    "value": [
        {
            "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTA5N2I0ZWIxMDFlYWJlNTIy",
            "assignedComputeInstance": {
                "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTA5N2I0ZWIxMDFlYWJlNTIy",
                "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-097b4eb101eabe522",
                "displayName": "SENTRY-CK-PRAT",
                "resourceType": "instance"
            }
        }
    ]
}
```
