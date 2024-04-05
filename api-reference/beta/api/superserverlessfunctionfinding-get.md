---
title: "Get superServerlessFunctionFinding"
description: "Read the properties and relationships of a superServerlessFunctionFinding object."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get superServerlessFunctionFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [superServerlessFunctionFinding](../resources/superserverlessfunctionfinding.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "superserverlessfunctionfinding_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/superserverlessfunctionfinding-get-permissions.md)]

## HTTP request

Get AWS super serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/aws/findings/{id}/microsoft.graph.superServerlessFunctionFinding
```

Get Azure super serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/azure/findings/{id}/microsoft.graph.superServerlessFunctionFinding
```

Get GCP super serverless functions:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsAnalytics/gcp/findings/{id}/microsoft.graph.superServerlessFunctionFinding
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

If successful, this method returns a `200 OK` response code and a [superServerlessFunctionFinding](../resources/superserverlessfunctionfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_superserverlessfunctionfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/azure/findings/c3VwZXJTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW4z/microsoft.graph.superServerlessFunctionFinding
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-superserverlessfunctionfinding-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.superServerlessFunctionFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

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
            "domain": "contoso.com"
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

