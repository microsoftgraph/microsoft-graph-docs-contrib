---
title: "Get openAwsSecurityGroupFinding"
description: "Read the properties and relationships of an openAwsSecurityGroupFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get openAwsSecurityGroupFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object.

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
GET /identityGovernance/permissionsAnalytics/aws/findings('id')/graph.openAwsSecurityGroupFinding
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

If successful, this method returns a `200 OK` response code and an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_openawssecuritygroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsMjIyNjk2')/graph.openAwsSecurityGroupFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openAwsSecurityGroupFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.openAwsSecurityGroupFinding/$entity",
    "id": "MSxPcGVuQXdzU2VjdXJpdHlHcm91cEZpbmRpbmcsMjIyNjk2",
    "createdDateTime": "2023-10-25T19:48:44.224315Z",
    "totalStorageBucketCount": 0,
    "inboundPorts": {
        "@odata.type": "#microsoft.graph.enumeratedInboundPorts",
        "ports": [
            "22"
        ]
    },
    "securityGroup": {
        "id": "YXJuOmF3czplYzI6dXMtZWFzdC0yOjM3NzU5NjEzMTc3NDpzZWN1cml0eS1ncm91cC9zZy0wMGMyMzRjM2YwNjZkYWYyNA",
        "externalId": "arn:aws:ec2:us-east-2:377596131774:security-group/sg-00c234c3f066daf24",
        "displayName": "launch-wizard-1",
        "resourceType": "security-group"
    }
}
```
