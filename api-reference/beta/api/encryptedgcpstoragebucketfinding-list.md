---
title: "List encryptedGcpStorageBucketFindings"
description: "Get a list of the encryptedGcpStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List encryptedGcpStorageBucketFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) objects and their properties.

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
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/graph.encryptedGcpStorageBucketFinding
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

If successful, this method returns a `200 OK` response code and a collection of [encryptedGcpStorageBucketFinding](../resources/encryptedgcpstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_encryptedgcpstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/graph.encryptedGcpStorageBucketFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.encryptedGcpStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.encryptedGcpStorageBucketFinding",
      "id": "9a3d0546-3512-a9a3-4dcf-6593848a6301",
      "createdDateTime": "String (timestamp)",
      "accessibility": "String",
      "encryptionManagedBy": "String"
    }
  ]
}
```

