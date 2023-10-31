---
title: "List gcpRoles"
description: "List all GCP roles in a GCP authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List gcpRoles
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [gcpRole](../resources/gcprole.md) objects and their properties for a provided GCP authorization system.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/roles
```

## Optional query parameters
This method supports the `$filter` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [gcpRole](../resources/gcprole.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_gcprole"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/roles
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.gcpRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/roles",
  "value": [
    {
      "id": "cm9sZXMvYmFja3VwZHIuY29tcHV0ZUVuZ2luZU9wZXJhdG9y",
      "externalId": "roles/backupdr.computeEngineOperator",
      "displayName": "Backup and DR Compute Engine Operator",
      "gcpRoleType": "system",
      "scopes": [
        {
          "service": {
            "id": "compute"
          },
          "resourceType": "instances"
        }
      ]
    },
    {
      "id": "cHJvamVjdHMvY2FyYmlkZS1ib25zYWktMjA1MDE3L3JvbGVzL0NLX1JPTEVfYWNjZXNzYXBwcm92YWxfcm9sZQ==",
      "externalId": "projects/carbide-bonsai-205017/roles/CK_ROLE_accessapproval_role",
      "displayName": "CK_ROLE_accessapproval_role",
      "gcpRoleType": "custom",
      "scopes": [
        {
          "service": {
            "id": "compute"
          },
          "resourceType": "instances"
        }
      ]
    }
  ]
}
```

