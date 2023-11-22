---
title: "Get externallyAccessibleGcpStorageBucketFinding"
description: "Read the properties and relationships of an externallyAccessibleGcpStorageBucketFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get externallyAccessibleGcpStorageBucketFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object.

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
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.externallyAccessibleGcpStorageBucketFinding
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

If successful, this method returns a `200 OK` response code and an [externallyAccessibleGcpStorageBucketFinding](../resources/externallyaccessiblegcpstoragebucketfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_externallyaccessiblegcpstoragebucketfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/findings/MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUdjcFN0b3JhZ2VCdWNrZXRGaW5kaW5nLDI3Nzcy/microsoft.graph.externallyAccessibleGcpStorageBucketFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-externallyaccessiblegcpstoragebucketfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-externallyaccessiblegcpstoragebucketfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externallyAccessibleGcpStorageBucketFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.externallyAccessibleGcpStorageBucketFinding/$entity",
    "id": "MSxFeHRlcm5hbGx5QWNjZXNzaWJsZUdjcFN0b3JhZ2VCdWNrZXRGaW5kaW5nLDI3Nzcy",
    "createdDateTime": "2023-10-25T17:41:21.929679Z",
    "accessibility": "unknownFutureValue",
    "encryptionManagedBy": "google",
    "storageBucket": {
        "id": "Y2xvdWRrbm94LXNlbnRyeS1jYXJiaWRlLWJvbnNhaS0yMDUwMTctdXMtd2VzdDE",
        "externalId": "cloudknox-sentry-carbide-bonsai-205017-us-west1",
        "displayName": "cloudknox-sentry-carbide-bonsai-205017-us-west1",
        "resourceType": "buckets"
    }
}
```
