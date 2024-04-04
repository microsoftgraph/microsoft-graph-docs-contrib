---
title: "Get encryptedAwsStorageBucketFinding"
description: "Read the properties and relationships of an encryptedAwsStorageBucketFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get encryptedAwsStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "encryptedawsstoragebucketfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/encryptedawsstoragebucketfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.encryptedAwsStorageBucketFinding
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

If successful, this method returns a `200 OK` response code and an [encryptedAwsStorageBucketFinding](../resources/encryptedawsstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_encryptedawsstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxFbmNyeXB0ZWRBd3NTdG9yYWdlQnVja2V0RmluZGluZywyNTA4NDA/microsoft.graph.encryptedAwsStorageBucketFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-encryptedawsstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.encryptedAwsStorageBucketFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.encryptedAwsStorageBucketFinding/$entity",
    "id": "MSxFbmNyeXB0ZWRBd3NTdG9yYWdlQnVja2V0RmluZGluZywyNTA4NDA",
    "createdDateTime": "2023-11-02T17:33:03.667463Z",
    "accessibility": "crossAccount",
    "storageBucket": {
        "id": "YXJuOmF3czpzMzo6OmF3cy1jbG91ZHRyYWlsLWxvZ3MtMzc3NTk2MTMxNzc0LWNiMjg4YThj",
        "externalId": "arn:aws:s3:::aws-cloudtrail-logs-377596131774-cb288a8c",
        "displayName": "aws-cloudtrail-logs-377596131774-cb288a8c",
        "resourceType": "bucket",
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

