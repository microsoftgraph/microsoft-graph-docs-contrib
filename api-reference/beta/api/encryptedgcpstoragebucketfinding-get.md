---
title: "Get encryptedGcpStorageBucketFinding"
description: "Read the properties and relationships of an encryptedGcpStorageBucketFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
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
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/key/findings/graph.encryptedGcpStorageBucketFinding
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/key/findings/graph.encryptedGcpStorageBucketFinding
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
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/graph.encryptedGcpStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.encryptedGcpStorageBucketFinding",
      "id": "ZW5jcnlwdGVkR2NwU3RvcmFnZUJ1Y2tldEZpbmRpbmcxMDAwMQ",
      "storageBucket": {
        "@odata.type": "graph.gcpAuthorizationSystemResource",
        "id": "dXMuYXJ0aWZhY3RzLmNhcmJpZGUtYm9uc2FpLTIwNTAxNy5hcHBzcG90LmNvbQ==",
        "externalId": "us.artifacts.carbide-bonsai-205017.appspot.com",
        "displayName": "us.artifacts.carbide-bonsai-205017.appspot.com",
        "resourceType": "buckets",
        "authorizationSystem": {
          "@odata.type": "graph.gcpAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "carbide-bonsai-205017",
          "authorizationSystemName": "ck-staging",
          "authorizationSystemType": "gcp"
        }
      },
      "accessibility": "subjectToObjectAcls",
      "encryptionManagedBy": "google",
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    },

  ]
}
```

