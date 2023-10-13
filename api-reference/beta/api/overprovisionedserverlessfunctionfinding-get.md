---
title: "Get overprovisionedServerlessFunctionFinding"
description: "Read the properties and relationships of an overprovisionedServerlessFunctionFinding object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get overprovisionedServerlessFunctionFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [overprovisionedServerlessFunctionFinding](../resources/overprovisionedserverlessfunctionfinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/aws/key/findings/graph.overprovisionedServerlessFunctionFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/azure/key/findings/graph.overprovisionedServerlessFunctionFinding
```
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/gcp/key/findings/graph.overprovisionedServerlessFunctionFinding
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

If successful, this method returns a `200 OK` response code and an [overprovisionedServerlessFunctionFinding](../resources/overprovisionedserverlessfunctionfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_overprovisionedserverlessfunctionfinding"
}
-->
``` http
GET https://graph.microsoft.com/identityGovernance/permissionsAnalytics/azure/key/findings/graph.overprovisionedServerlessFunctionFinding
```


### Response
The following is an example of the response
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
  "@odata.context": "https://graph.microsoft.com/identityGovernance/$metadata#permissionsAnalytics/azure/findings/graph.overprovisionedServerlessFunctionFinding",
  "value": [
    {
      "@odata.type": "graph.overprovisionedServerlessFunctionFinding",
      "id": "b3ZlcnByb3Zpc2lvbmVkU2VydmVybGVzc0Z1bmN0aW9uRmluZGluZzk",
      "identity": {
          "@odata.type": "graph.azureServerlessFunction",
          "id": "L3N1YnNjcmlwdGlvbnMvNmVhMjg1ZDktZmU3ZS00OWY2LWEwZmYtMjAzYzFhN2FjMjI1L3Jlc291cmNlR3JvdXBzL9C/0YPRgdGC0YvQvdC90YvRhS9wcm92aWRlcnMvTWljcm9zb2Z0LldlYi9zaXRlcy9LaXJjaHLDtmFkcw==",
          "externalId": "/subscriptions/6ea285d9-fe7e-49f6-a0ff-203c1a7ac225/resourceGroups/пустынных/providers/Microsoft.Web/sites/Kirchröads",
          "displayName": "Kirchröads",
          "source": {
            "@odata.type": "graph.aadSource":,
            "identityProviderType": "aad",
            "domain": "6ea285d9-fe7e-49f6-a0ff-203c1a7ac225"
          },
          "authorizationSystem": {
            "@odata.type": "graph.azureAuthorizationSystem",
            "id": "{Id}",
            "authorizationSystemId": "e7c4026e-93bc-404f-9f77-0af3ed4df58c",
            "authorizationSystemName": "Microsoft Azure Sponsorship 2",
            "authorizationSystemType": "azure"
          }
      },
      "actionSummary": {
        "assigned": 2,
        "exercised": 0,
        "available": 12906
      },
      "permissionsCreepIndex": {
        "score": 0
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

