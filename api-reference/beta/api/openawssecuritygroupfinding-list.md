---
title: "List openAwsSecurityGroupFinding objects"
description: "Get a list of the openAwsSecurityGroupFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# List openAwsSecurityGroupFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "openawssecuritygroupfinding_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/openawssecuritygroupfinding-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.openAwsSecurityGroupFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_openawssecuritygroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.openAwsSecurityGroupFinding
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-openawssecuritygroupfinding-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-openawssecuritygroupfinding-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-openawssecuritygroupfinding-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-openawssecuritygroupfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-openawssecuritygroupfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-openawssecuritygroupfinding-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-openawssecuritygroupfinding-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-openawssecuritygroupfinding-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.openAwsSecurityGroupFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/aws/findings/microsoft.graph.openAwsSecurityGroupFinding",
  "value": [
    {
        "@odata.type": "graph.openAwsSecurityGroupFinding",
        "id": "b3BlbkF3c1NlY3VyaXR5R3JvdXBGaW5kaW5nMTAwMDAy",
        "securityGroup": {
            "@odata.type": "graph.awsAuthorizationSystemResource",
            "id": "YXJuOmF3czplYzI6dXMtZWFzdC0xOjk1Njk4Nzg4NzczNTpzZWN1cml0eS1ncm91cC9zZy0wN2RhODgxNzU2NGVkMzM4MQ==",
            "externalId": "arn:aws:ec2:us-east-1:956987887735:security-group/sg-07da8817564ed3381",
            "displayName": "s10-sg",
            "resourceType": "networkSecurityGroups",
            "authorizationSystem": {
              "@odata.type": "graph.awsAuthorizationSystem",
              "id": "{Id}",
              "authorizationSystemId": "377596131774",
              "authorizationSystemName": "cloudknox-staging",
              "authorizationSystemType": "aws"
            }
        },
        "inboundPorts": {
            "@odata.type": "graph.allInboundPorts"
        },
        "assignedComputeInstancesDetails@odata.count": 1, // We created a work item for the future implementation of expanding this the assignedComputeInstancesDetails property https://identitydivision.visualstudio.com/Engineering/_workitems/edit/2503297
        "totalStorageBucketCount": 0,
        "createdDateTime ": "2020-10-09T20:11:45.671Z"
    }
  ]
}
```

