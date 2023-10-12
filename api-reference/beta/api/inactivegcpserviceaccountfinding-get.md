---
title: "Get inactiveGcpServiceAccountFinding"
description: "Read the properties and relationships of an inactiveGcpServiceAccountFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveGcpServiceAccountFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object.

You want to know details about inactive service accounts in GCP authorization systems.

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
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/key/findings/microsoft.graph.inactiveGcpServiceAccountFinding
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

If successful, this method returns a `200 OK` response code and an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object in the response body.

If unsuccessful, this method will return a '403' response if you don't have access to the authorization system or a '404' response if the key passed into the GET method is invalid.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactivegcpserviceaccountfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp('id')/findings/microsoft.graph.inactiveGcpServiceAccountFinding
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveGcpServiceAccountFinding"
}
-->
``` http
{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/graph.inactiveGcpServiceAccountFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveGcpServiceAccountFinding",
      "id": "aW5hY3RpdmVTZXJ2aWNlQWNjb3VudEZpbmRpbmcxMDAwMQ",
      "identity": {
        "@odata.type": "graph.gcpServiceAccount",
        "id": "Z2VldGEtc2VydmljZWFjY291bnQxQGNhcmJpZGUtYm9uc2FpLTIwNTAxNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ==",
        "externalId": "geeta-serviceaccount1@carbide-bonsai-205017.iam.gserviceaccount.com",
        "displayName": "geeta-serviceaccount1",
        "source": {
          "@odata.type": "graph.gsuiteSource",
          "identityProviderType": "gsuite",
          "domain": "carbide-bonsai-205017"
        },
        "authorizationSystem": {
          "@odata.type": "graph.gcpAuthorizationSystem",
          "id": "{Id}",
          "authorizationSystemId": "carbide-bonsai-205017",
          "authorizationSystemName": "ck-staging",
          "authorizationSystemType": "gcp"
        }
      },
      "actionSummary": {
        "assigned": 4631,
        "exercised": 0,
        "available": 4631
      },
      "permissionsCreepIndex": {
        "score": 82
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z",
      "identityDetails": {
        "createdDateTime": "2020-04-12T20:34:24Z",
        "lastActiveDateTime": "2020-10-30T03:21:05Z"
      }
    }
  ]
}
```
