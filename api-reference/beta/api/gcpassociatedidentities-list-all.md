---
title: "List all (identities in a GCP authorization system)"
description: "Get a list of the gcpIdentity objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List all (identities in a GCP authorization system)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [gcpIdentity](../resources/gcpidentity.md) objects and their properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "gcpassociatedidentities_list_all" } -->
[!INCLUDE [permissions-table](../includes/permissions/gcpassociatedidentities-list-all-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$count`, `$top`, and `$skipToken` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [gcpIdentity](../resources/gcpidentity.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_gcpidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-gcpidentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpIdentity)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.gcpUser",
      "id": "dXNlcjFAZ3N1aXRlMS5jb20",
      "externalId": "user1@gsuite1.com",
      "displayName": "user1",
      "source": {
          "@odata.type": "#microsoft.graph.gsuiteSource",
          "domain": "gsuite1.com",
          "identityProviderType": "gsuite"
      }
    },
    {
      "@odata.type": "#microsoft.graph.gcpServiceAccount",
      "id": "dGVzdC1zZXJ2aWNlLTAxQGhlbGxvLXdvcmxkLTIzMTEwNy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbQ",
      "externalId": "test-service-01@hello-world-231107.iam.gserviceaccount.com",
      "displayName": "test-service-01",
      "source": {
          "@odata.type": "#microsoft.graph.gsuiteSource",
          "domain": "hello-world-231107.iam.gserviceaccount.com",
          "identityProviderType": "gsuite"
      }
    }
  ]
}
```

