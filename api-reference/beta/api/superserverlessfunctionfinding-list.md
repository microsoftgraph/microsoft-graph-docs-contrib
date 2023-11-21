---
title: "List superServerlessFunctionFinding objects"
description: "Get a list of the superServerlessFunctionFinding objects and their properties."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List superServerlessFunctionFinding objects
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [superServerlessFunctionFinding](../resources/superserverlessfunctionfinding.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

List AWS super serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.superServerlessFunctionFinding
```

List AWS super serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superServerlessFunctionFinding
```

List GCP super serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/microsoft.graph.superServerlessFunctionFinding
```

## Optional query parameters
This method supports the `$filter` and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [superServerlessFunctionFinding](../resources/superserverlessfunctionfinding.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_superserverlessfunctionfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/microsoft.graph.superServerlessFunctionFinding
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.superServerlessFunctionFinding)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/identityGovernance/$metadata#permissionsAnalytics/azure/findings/microsoft.graph.superServerlessFunctionFinding",
  "value": [
    {
      "@odata.type": "graph.superServerlessFunctionFinding",
      "id": "c3VwZXJTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW4z",
      "identity": {
          "@odata.type": "graph.azureServerlessFunction",
          "id":"L3N1YnNjcmlwdGlvbnMvNmVhMjg1ZDktZmU3ZS00OWY2LWEwZmYtMjAzYzFhN2FjMjI1L3Jlc291cmNlR3JvdXBzL9C/0YPRgdGC0YvQvdC90YvRhS9wcm92aWRlcnMvTWljcm9zb2Z0LldlYi9zaXRlcy9LaXJjaHLDtmFkcw==",
          "externalId": "/subscriptions/6ea285d9-fe7e-49f6-a0ff-203c1a7ac225/resourceGroups/пустынных/providers/Microsoft.Web/sites/Kirchröads",
          "displayName": "Kirchröads",
          "source": {
            "@odata.type": "graph.aadSource",
            "identityProviderType": "aad",
            "domain": "mciemc1.onmicrosoft.com"
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
      "identityDetails": {
        "createdDateTime": "String (timestamp)",
        "lastActiveDateTime": "String (timestamp)"
      },
      "permissionsCreepIndex": {
        "score": 0
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

