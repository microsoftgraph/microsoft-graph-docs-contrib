---
title: "List correlatedIdentity objects"
description: "List the correlated identity results for an identity correlation report."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List correlatedIdentity objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the correlated identity results for an [identityCorrelation](../resources/identitycorrelation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitycorrelation-list-identities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitycorrelation-list-identities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/correlations/{identityCorrelationId}/identities
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [correlatedIdentity](../resources/correlatedidentity.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_correlatedidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/correlations/{identityCorrelationId}/identities
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.correlatedIdentity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.correlatedIdentity",
      "id": "a3f7b2c1-4e89-4d6a-b5c8-9e2f1a7d3b60",
      "correlatedDateTime": "2026-05-01T01:27:00Z",
      "sourceIdentity": {
        "anchor": {
          "name": "objectId",
          "value": "jamie998877"
        },
        "matchingProperty": {
          "name": "userPrincipalName",
          "value": "jamie@company.com"
        },
        "identityType": "user",
        "details": {}
      },
      "targetIdentity": {
        "anchor": {
          "name": "id",
          "value": "d8e4c6a2-7f13-4b95-a1d9-5c3e8b6f2a74"
        },
        "matchingProperty": {
          "name": "upn",
          "value": "jamie@company.com"
        },
        "identityType": "user",
        "details": {}
      },
      "status": "correlatedAssigned",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.correlatedIdentity",
      "id": "b4c8d3e2-5f9a-4e7b-c6d9-0f3a2b8e4c71",
      "correlatedDateTime": "2026-05-01T01:28:00Z",
      "sourceIdentity": null,
      "targetIdentity": {
        "anchor": {
          "name": "id",
          "value": "e9f5d7b3-8a24-4c06-b2ea-6d4f9c7a3b85"
        },
        "matchingProperty": {
          "name": "upn",
          "value": "alex@company.com"
        },
        "identityType": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
        "details": {}
      },
      "status": "uncorrelated",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.correlatedIdentity",
      "id": "c5d9e4f3-6a0b-4f8c-d7e0-1a4b3c9f5d82",
      "correlatedDateTime": "2026-05-01T01:29:00Z",
      "sourceIdentity": null,
      "targetIdentity": {
        "anchor": {
          "name": "id",
          "value": "f0a6e8c4-9b35-4d17-c3fb-7e5a0d8b4c96"
        },
        "matchingProperty": {
          "name": "upn",
          "value": "morgan@@company..com"
        },
        "identityType": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
        "details": {}
      },
      "status": "failToCorrelate",
      "error": {
        "errorCode": "AzureActiveDirectoryInvalidUserPrinicipalNameFormat",
        "errorMessage": "The format of this user principal name is unexpected"
      }
    },
    {
      "@odata.type": "#microsoft.graph.correlatedIdentity",
      "id": "d6e0f5a4-7b1c-4a9d-e8f1-2b5c4d0a6e93",
      "correlatedDateTime": "2026-05-01T01:30:00Z",
      "sourceIdentity": {
        "anchor": {
          "name": "objectId",
          "value": "taylor667788"
        },
        "matchingProperty": {
          "name": "userPrincipalName",
          "value": "taylor@company.com"
        },
        "identityType": "user",
        "details": {}
      },
      "targetIdentity": {
        "anchor": {
          "name": "id",
          "value": "a1b7f9d5-0c46-4e28-d4ac-8f6b1e9c5d07"
        },
        "matchingProperty": {
          "name": "upn",
          "value": "taylor@company.com"
        },
        "identityType": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
        "details": {}
      },
      "status": "correlatedNotAssigned",
      "error": null
    }
  ]
}
```