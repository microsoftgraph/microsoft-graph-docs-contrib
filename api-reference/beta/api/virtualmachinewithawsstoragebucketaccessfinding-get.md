---
title: "Get virtualMachineWithAwsStorageBucketAccessFinding"
description: "Read the properties and relationships of a virtualMachineWithAwsStorageBucketAccessFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
ms.date: 04/18/2024
---

# Get virtualMachineWithAwsStorageBucketAccessFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Read the properties and relationships of a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualmachinewithawsstoragebucketaccessfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualmachinewithawsstoragebucketaccessfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualmachinewithawsstoragebucketaccessfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxWaXJ0dWFsTWFjaGluZVdpdGhBd3NTdG9yYWdlQnVja2V0QWNjZXNzRmluZGluZyw0MzUwMg/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualmachinewithawsstoragebucketaccessfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding/$entity",
    "id": "MSxWaXJ0dWFsTWFjaGluZVdpdGhBd3NTdG9yYWdlQnVja2V0QWNjZXNzRmluZGluZyw0MzUwMg",
    "createdDateTime": "2023-10-25T19:48:43.993578Z",
    "bucketCount": 4,
    "accessibleCount": 4,
    "permissionsCreepIndex": {
        "score": 1
    },
    "ec2Instance": {
        "id": "YXJuOmF3czplYzI6dXMtZWFzdC0yOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTBhZmEwOTdiMjIzZjRjOTQ5",
        "externalId": "arn:aws:ec2:us-east-2:377596131774:instance/i-0afa097b223f4c949",
        "displayName": "automation-ec2",
        "resourceType": "instance"
    },
    "role": {
        "id": "YXJuOmF3czplYzI6dXMtZWFzdC0yOjM3NzU5NjEzMTc3NDppbnN0YW5jZS9pLTBhZmEwOTdiMjIzZjRjOTQ5",
        "externalId": "arn:aws:ec2:us-east-2:377596131774:instance/i-0afa097b223f4c949",
        "displayName": "automation-ec2",
        "source": {
            "@odata.type": "#microsoft.graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "377596131774"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
            "authorizationSystemId": "377596131774",
            "authorizationSystemName": "cloudknox-staging",
            "authorizationSystemType": "aws",
            "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
        }
    }
}
```


