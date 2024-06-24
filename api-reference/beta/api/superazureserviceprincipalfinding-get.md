---
title: "Get superAzureServicePrincipalFinding"
description: "Read the properties and relationships of a superAzureServicePrincipalFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: apiPageType
---

# Get superAzureServicePrincipalFinding

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [superAzureServicePrincipalFinding](../resources/superazureserviceprincipalfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "superazureserviceprincipalfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/superazureserviceprincipalfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.superAzureServicePrincipalFinding
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

If successful, this method returns a `200 OK` response code and a [superAzureServicePrincipalFinding](../resources/superazureserviceprincipalfinding.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_superazureserviceprincipalfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/MSxTdXBlckF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMjI2ODM/microsoft.graph.superAzureServicePrincipalFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-superazureserviceprincipalfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.superAzureServicePrincipalFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superAzureServicePrincipalFinding/$entity",
    "id": "MSxTdXBlckF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMjI2ODM",
    "createdDateTime": "2023-10-17T19:42:38.443258Z",
    "actionSummary": {
        "assigned": 14486,
        "exercised": 0,
        "available": 14486
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 83
    },
    "identity": {
        "@odata.type": "#microsoft.graph.azureServicePrincipal",
        "id": "ZTFmNzIzZTctMGI4Mi00OTU5LTllYzItNTA2M2IwZjI2ZDNj",
        "externalId": "e1f723e7-0b82-4959-9ec2-5063b0f26d3c",
        "displayName": "Mazin SQL Access",
        "source": {
            "@odata.type": "#microsoft.graph.aadSource",
            "identityProviderType": "aad",
            "domain": "00f7dcae-97f9-492b-af2e-36eb35b613af"
        },
        "authorizationSystem": {
            "@odata.type": "#microsoft.graph.azureAuthorizationSystem",
            "authorizationSystemId": "00f7dcae-97f9-492b-af2e-36eb35b613af",
            "authorizationSystemName": "????-Subscription-???????-2023",
            "authorizationSystemType": "azure",
            "id": "MSxhenVyZSwwMGY3ZGNhZS05N2Y5LTQ5MmItYWYyZS0zNmViMzViNjEzYWY"
        }
    }
}
```
