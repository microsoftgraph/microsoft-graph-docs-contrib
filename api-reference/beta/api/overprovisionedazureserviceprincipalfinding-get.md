---
title: "Get overprovisionedAzureServicePrincipalFinding"
description: "Read the properties and relationships of an overprovisionedAzureServicePrincipalFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get overprovisionedAzureServicePrincipalFinding

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedAzureServicePrincipalFinding](../resources/overprovisionedazureserviceprincipalfinding.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "overprovisionedazureserviceprincipalfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/overprovisionedazureserviceprincipalfinding-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/key/findings/{id}/overprovisionedAzureServicePrincipalFinding
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

If successful, this method returns a `200 OK` response code and an [overprovisionedAzureServicePrincipalFinding](../resources/overprovisionedazureserviceprincipalfinding.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedazureserviceprincipalfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/b3ZlcnByb3Zpc2lvbmVkU2VydmljZVByaW5jaXBhbEZpbmRpbmcxMg/overprovisionedAzureServicePrincipalFinding
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.overprovisionedAzureServicePrincipalFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/azure/findings/microsoft.graph.overprovisionedAzureServicePrincipalFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedAzureServicePrincipalFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkU2VydmljZVByaW5jaXBhbEZpbmRpbmcxMg",
      "identity": {
          "@odata.type": "graph.azureServicePrincipal",
          "id":"YjRkY2ViZTMtMGQ1Yy00ODQ3LWI2ZjktNWY2ZjllODhhYTUw",
          "externalId": "b4dcebe3-0d5c-4847-b6f9-5f6f9e88aa50",
          "displayName": "ciem-cloudknox-3p-app",
          "source": {
            "@odata.type": "graph.aadSource",
            "identityProviderType": "aad",
            "domain": "b4dcebe3-0d5c-4847-b6f9-5f6f9e88aa50"
          },
          "authorizationSystem": {
            "@odata.type": "graph.azureAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "5800bab9-d576-492b-99f5-0ea0cd1f6282",
            "authorizationSystemName": "Microsoft Azure Sponsorship 2",
            "authorizationSystemType": "azure"
          }
      },
      "actionSummary": {
        "assigned": 5044,
        "exercised": 0,
        "available": 10542
      },
      "identityDetails": {
        "createdDateTime": "String (timestamp)",
        "lastActiveDateTime": "String (timestamp)"
      },
      "permissionsCreepIndex": {
        "score": 1
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2021-04-12T20:34:24Z",
        "lastActiveDateTime": "2021-10-30T03:21:05Z"
      }
    }
  ]
}
```
