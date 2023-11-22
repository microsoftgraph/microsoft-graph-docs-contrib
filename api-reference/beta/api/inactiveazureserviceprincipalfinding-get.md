---
title: "Get inactiveAzureServicePrincipalFinding"
description: "Read the properties and relationships of an inactiveAzureServicePrincipalFinding object, representing inactive service principals in your Azure environment.."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get inactiveAzureServicePrincipalFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) object, representing inactive service principals in your Azure environment.

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
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.inactiveAzureServicePrincipalFinding
```


## Optional query parameters
This method does not support any OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_inactiveazureserviceprincipalfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/MSxJbmFjdGl2ZUF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMTA3NDQz/microsoft.graph.inactiveAzureServicePrincipalFinding
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-inactiveazureserviceprincipalfinding-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-inactiveazureserviceprincipalfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveAzureServicePrincipalFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.inactiveAzureServicePrincipalFinding/$entity",
    "id": "MSxJbmFjdGl2ZUF6dXJlU2VydmljZVByaW5jaXBhbEZpbmRpbmcsMTA3NDQz",
    "createdDateTime": "2023-10-17T19:42:38.053563Z",
    "actionSummary": {
        "assigned": 5737,
        "exercised": 0,
        "available": 14486
    },
    "identityDetails": {
      "createdDateTime": "String (timestamp)",
      "lastActiveDateTime": "String (timestamp)"
    },
    "permissionsCreepIndex": {
        "score": 0
    },
    "identity": {
        "@odata.type": "#microsoft.graph.azureServicePrincipal",
        "id": "YWJkNjM1ZTUtNTUyOC00NTY1LThjYWYtZjJjNjBmNGY4MGY4",
        "externalId": "abd635e5-5528-4565-8caf-f2c60f4f80f8",
        "displayName": "ciem-cloudknox-3p-app",
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

