---
title: "Get overprovisionedServerlessFunctionFinding"
description: "Read the properties and relationships of an overprovisionedServerlessFunctionFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# Get overprovisionedServerlessFunctionFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedServerlessFunctionFinding](../resources/overprovisionedserverlessfunctionfinding.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "overprovisionedserverlessfunctionfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/overprovisionedserverlessfunctionfinding-get-permissions.md)]

## HTTP request

Get AWS overprovisioned serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.overprovisionedServerlessFunctionFinding
```

Get AWS overprovisioned serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.overprovisionedServerlessFunctionFinding
```

Get GCP overprovisioned serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.overprovisionedServerlessFunctionFinding
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

If successful, this method returns a `200 OK` response code and an [overprovisionedServerlessFunctionFinding](../resources/overprovisionedserverlessfunctionfinding.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedserverlessfunctionfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/MSxPdmVycHJvdmlzaW9uZWRTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW5nLDQ3MDQ/microsoft.graph.overprovisionedServerlessFunctionFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-overprovisionedserverlessfunctionfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.overprovisionedServerlessFunctionFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.overprovisionedServerlessFunctionFinding/$entity",
    "id": "MSxPdmVycHJvdmlzaW9uZWRTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW5nLDQ3MDQ",
    "createdDateTime": "2023-10-17T23:47:23.698142Z",
    "actionSummary": {
        "assigned": 4028,
        "exercised": 5,
        "available": 58
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 2
    },
    "identity": {
        "@odata.type": "#microsoft.graph.awsLambda",
        "id": "YXJuOmF3czpsYW1iZGE6dXMtd2VzdC0yOjk1Njk4Nzg4NzczNTpmdW5jdGlvbjpSREstUnVsZS1GdW5jdGlvbi1DTE9VREtOT1hfUENJ",
        "externalId": "arn:aws:lambda:us-west-2:956987887735:function:RDK-Rule-Function-CLOUDKNOX_PCI",
        "displayName": "RDK-Rule-Function-CLOUDKNOX_PCI",
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
