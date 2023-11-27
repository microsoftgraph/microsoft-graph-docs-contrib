---
title: "Get awsExternalSystemAccessFinding"
description: "Read the properties and relationships of an awsExternalSystemAccessFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get awsExternalSystemAccessFinding

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object.

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
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.awsExternalSystemAccessFinding
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

If successful, this method returns a `200 OK` response code and an [awsExternalSystemAccessFinding](../resources/awsexternalsystemaccessfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_awsexternalsystemaccessfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc0ZpbmRpbmcsMTg5NzE/microsoft.graph.awsExternalSystemAccessFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-awsexternalsystemaccessfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-awsexternalsystemaccessfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.awsExternalSystemAccessFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.awsExternalSystemAccessFinding/$entity",
    "id": "MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc0ZpbmRpbmcsMTg5NzE",
    "createdDateTime": "2023-10-25T23:48:18.389587Z",
    "trustsAllIdentities": true,
    "trustedIdentityCount": null,
    "accessMethods": "direct",
    "affectedSystem": {
        "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
        "authorizationSystemId": "956987887735",
        "authorizationSystemName": "ck-development",
        "authorizationSystemType": "aws",
        "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
    }
}
```

