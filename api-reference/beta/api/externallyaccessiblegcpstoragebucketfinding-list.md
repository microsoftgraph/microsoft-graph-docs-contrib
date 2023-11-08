---
title: "List externallyAccessibleGcpStorageBucketFindings"
description: "Get a list of the externallyAccessibleGcpStorageBucketFinding objects and their properties."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List externallyAccessibleGcpStorageBucketFindings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects and their properties.

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
GET /identityGovernance/permissionsAnalytics/gcp/findings/graph.externallyAccessibleGcpStorageBucketFinding
```

## Optional query parameters
This method supports the `$filter` (`eq`) and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_externallyaccessiblegcpstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/graph.externallyAccessibleGcpStorageBucketFinding
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externallyAccessibleGcpStorageBucketFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/graph.externallyAccessibleGcpStorageBucketFinding",
  "value": [
    {
      "@odata.type": "graph.externallyAccessibleGcpStorageBucketFinding",
      "id": "cmVzb3VyY2VmaW5kaW5nMTAwMDAx",
      "storageBucket": {
        "@odata.type": "graph.gcpAuthorizationSystemResource",
        "id": "Y2FyYmlkZS1ib25zYWktMjA1MDE3LmFwcHNwb3QuY29t",
        "externalId": "carbide-bonsai-205017.appspot.com",
        "displayName": "carbide-bonsai-205017.appspot.com",
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

