---
title: "Get inactiveGroupFinding"
description: "Read the properties and relationships of an inactiveGroupFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveGroupFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.
You want to view details about inactive groups in AWS, Azure, and GCP authorization systems.

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
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/key/findings/microsoft.graph.inactiveGroupFinding
```

<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/key/findings/microsoft.graph.inactiveGroupFinding

<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp/key/findings/microsoft.graph.inactiveGroupFinding
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

If successful, this method returns a `200 OK` response code and a collection of [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects in the response body.

If unsuccessful, this method will return a '403' response if you don't have access to the authorization system or a '404' response if the key passed into the GET method is invalid.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_inactivegroupfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/gcp('id)/findings/microsoft.graph.inactiveGroupFinding
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.inactiveGroupFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/gcp/findings/graph.inactiveGroupFinding",
  "value": [
    {
      "@odata.type": "graph.inactiveGroupFinding",
      "id": "aW5hY3RpdmVHcm91cEZpbmRpbmcx",
      "group": {
          "@odata.type": "graph.gcpGroup",
          "id": "dGVzdGdyb3VwQGNsb3Vka25veC5pbw==",
          "externalId": "testgroup@cloudknox.io",
          "displayName": "testgroup",
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
        "assigned": 3059,
        "exercised": 0,
        "available": 7076
      },
      "permissionsCreepIndex": {
        "score": 1
      },
      "createdDateTime": "2020-10-11T20:11:45.671Z"
    },

  ]
}
```
