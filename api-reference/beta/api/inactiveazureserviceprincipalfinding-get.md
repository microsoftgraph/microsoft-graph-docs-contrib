---
title: "Get inactiveAzureServicePrincipalFinding"
description: "Read the properties and relationships of an inactiveAzureServicePrincipalFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveAzureServicePrincipalFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) object.

You can view details about inactive service principals in your Azure environment.

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
GET https://graph.microsoft.com/betaevan/identityGovernance/permissionsAnalytics/azure/key/findings/graph.inactiveAzureServicePrincipalFinding
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

If successful, this method returns a `200 OK` response code and an [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) object in the response body.

If unsuccessful, this method will return a '403' response if you don't have access to the authorization system or a '404' response if the key passed into the GET method is invalid.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactiveazureserviceprincipalfinding"
}
-->
``` http
GET https://graph.microsoft.com/betaevan/identityGovernance/permissionsAnalytics/azure('id)/findings/graph.inactiveAzureServicePrincipalFinding
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveAzureServicePrincipalFinding"
}
-->
``` http
{
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/azure/graph.inactiveAzureServicePrincipalFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveAzureServicePrincipalFinding",
      "id": "aW5hY3RpdmVTZXJ2aWNlUHJpbmNpcGFsRmluZGluZzEwMDAx",
      "identity": {
          "@odata.type": "graph.azureServicePincipal",
          "id":"YjRkY2ViZTMtMGQ1Yy00ODQ3LWI2ZjktNWY2ZjllODhhYTUw",
          "externalId": "b4dcebe3-0d5c-4847-b6f9-5f6f9e88aa50",
          "displayName": "ciem-cloudknox-3p-app",
          "source": {
            "@odata.type": "graph.aadSource":,
            "identityProviderType": "aad",
            "domain": "6bdeb36e-2415-4f7e-ac03-49c518da0e10"
          },
          "authorizationSystem": {
            "@odata.type": "graph.azureAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "6ea285d9-fe7e-49f6-a0ff-203c1a7ac225",
            "authorizationSystemName": "Microsoft Azure Sponsorship 2",
            "authorizationSystemType": "azure"
          }
      },
      "actionSummary": {
        "assigned": 5046,
        "exercised": 0,
        "available": 12724
      },
      "permissionsCreepIndex": {
        "score": 0
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    },

  ]
}
```

