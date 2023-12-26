---
title: "Get overprovisionedUserFinding"
description: "Read the properties and relationships of an overprovisionedUserFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get overprovisionedUserFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedUserFinding](../resources/overprovisioneduserfinding.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

Get AWS overpermissioned users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.overprovisionedUserFinding
```

Get Azure overpermissioned users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.overprovisionedUserFinding
```

Get GCP overpermissioned users:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.overprovisionedUserFinding
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

If successful, this method returns a `200 OK` response code and an [overprovisionedUserFinding](../resources/overprovisioneduserfinding.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_overprovisioneduserfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/MSxPdmVycHJvdmlzaW9uZWRVc2VyRmluZGluZywxMjU0MjA/microsoft.graph.overprovisionedUserFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-overprovisioneduserfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-overprovisioneduserfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.overprovisionedUserFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.overprovisionedUserFinding/$entity",
    "id": "MSxPdmVycHJvdmlzaW9uZWRVc2VyRmluZGluZywxMjU0MjA",
    "createdDateTime": "2023-10-17T23:47:23.786106Z",
    "actionSummary": {
        "assigned": 10783,
        "exercised": 58,
        "available": 58
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 98
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsUser",
        "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3NyaWhhcnNoYQ",
        "externalId": "arn:aws:iam::956987887735:user/sriharsha",
        "displayName": "sriharsha",
        "source": {
            "@odata.type": "#microsoft.graph.awsSource",
            "identityProviderType": "aws",
            "accountId": "956987887735"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
            "authorizationSystemId": "956987887735",
            "authorizationSystemName": "ck-development",
            "authorizationSystemType": "aws",
            "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
        }
    }
}
```
