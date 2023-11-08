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
GET https://graph.microsoft.com/beta//identityGovernance/permissionsAnalytics/aws/findings('MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsMTc0NDE5')/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails
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
      "@odata.context": "https://localhost:7214/$metadata#identityGovernance/permissionsAnalytics/aws/findings('MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsMTc0NDE5')/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails(assignedComputeInstance())",
    "value": [
        {
            "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTA5N2I0ZWIxMDFlYWJlNTIy",
            "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-097b4eb101eabe522",
            "assignedComputeInstance": {
                "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTA5N2I0ZWIxMDFlYWJlNTIy",
                "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-097b4eb101eabe522",
                "displayName": "SENTRY-CK-PRAT",
                "resourceType": "instance"
            }
        },
        {
            "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTA4MjlkYjRkODVlNzNhZDg5",
            "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-0829db4d85e73ad89",
            "assignedComputeInstance": {
                "id": "YXJuOmF3czplYzI6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTppbnN0YW5jZS9pLTA4MjlkYjRkODVlNzNhZDg5",
                "externalId": "arn:aws:ec2:us-west-2:956987887735:instance/i-0829db4d85e73ad89",
                "displayName": "PratS10-01062021",
                "resourceType": "instance"
            }
        }
    ],
    "@odata.nextLink": "https://localhost:7214/identityGovernance/permissionsAnalytics/aws/findings('MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsMTc0NDE5')/microsoft.graph.openAwsSecurityGroupFinding/assignedComputeInstancesDetails?$skipToken=eyJwYXRzIjoxNjc2Mzk2NDM0MTUyLCJlbnRzIjoxNjc2Mzk2NDM0MTUyLCJ2IjoiMS4wIiwicyI6MiwidCI6bnVsbCwib2IiOm51bGx9"
}
```

