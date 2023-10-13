---
title: "Get superAzureServicePrincipalFinding"
description: "Read the properties and relationships of a superAzureServicePrincipalFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get superAzureServicePrincipalFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [superAzureServicePrincipalFinding](../resources/superazureserviceprincipalfinding.md) object.

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

If successful, this method returns a `200 OK` response code and a [superAzureServicePrincipalFinding](../resources/superazureserviceprincipalfinding.md) object in the response body.

If unsuccessful, this method will return a '403' response if you don't have access to the authorization system or a '404' response if the key passed into the GET method is invalid.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_superazureserviceprincipalfinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/azure/key/findings/graph.superAzureServicePrincipalFinding
```


### Response
The following is an example of the response
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
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/azure/findings/graph.superAzureServicePrincipalFinding",
  "value": [
    {
      "@odata.type": "graph.superAzureServicePrincipalFinding",
      "id": "c3VwZXJTZXJ2aWNlUHJpbmNpcGFsRmluZGluZzU",
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
      "permissionsCreepIndex": {
        "score": 1
      },
      "createdDateTime": "2020-10-11T20:11:45.6711Z",
      "identityDetails": {
        "createdDateTime": "2021-04-12T20:34:24Z",
        "lastActiveDateTime": "2021-10-30T03:21:05Z"
      }
    },

  ]
}
```

