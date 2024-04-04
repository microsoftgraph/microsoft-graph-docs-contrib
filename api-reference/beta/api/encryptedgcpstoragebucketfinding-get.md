---
title: "Get encryptedGcpStorageBucketFinding"
description: "Read the properties and relationships of an encryptedGcpStorageBucketFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get encryptedGcpStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "encryptedgcpstoragebucketfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/encryptedgcpstoragebucketfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.encryptedGcpStorageBucketFinding
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

If successful, this method returns a `200 OK` response code and an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_encryptedgcpstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/MSxFbmNyeXB0ZWRHY3BTdG9yYWdlQnVja2V0RmluZGluZyw0NjM4OQ/microsoft.graph.encryptedGcpStorageBucketFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-encryptedgcpstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.encryptedGcpStorageBucketFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.encryptedGcpStorageBucketFinding/$entity",
    "id": "MSxFbmNyeXB0ZWRHY3BTdG9yYWdlQnVja2V0RmluZGluZyw0NjM4OQ",
    "createdDateTime": "2023-11-02T17:46:19.801131Z",
    "accessibility": "private",
    "encryptionManagedBy": "google",
    "storageBucket": {
        "id": "YWxlcnQtdGVzdC1uaWhhcmlrYQ",
        "externalId": "alert-test-niharika",
        "displayName": "alert-test-niharika",
        "resourceType": "buckets",
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
            "authorizationSystemId": "carbide-bonsai-205017",
            "authorizationSystemName": "ck-staging",
            "authorizationSystemType": "gcp",
            "id": "MSxnY3AsY2FyYmlkZS1ib25zYWktMjA1MDE3"
        }
    }
}
```

