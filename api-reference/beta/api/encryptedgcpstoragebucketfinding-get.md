---
title: "Get encryptedGcpStorageBucketFinding"
description: "Read the properties and relationships of an encryptedGcpStorageBucketFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get encryptedGcpStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object.

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
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings('id')/graph.encryptedGcpStorageBucketFinding
```

## Optional query parameters
This method supports none of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_encryptedgcpstoragebucketfinding"
}
-->
``` http
GET https://canary.graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings('MSxFbmNyeXB0ZWRHY3BTdG9yYWdlQnVja2V0RmluZGluZyw0NjM4OQ')/graph.encryptedGcpStorageBucketFinding
```


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
    "@odata.context": "https://canary.graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.encryptedGcpStorageBucketFinding/$entity",
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

