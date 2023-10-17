---
title: "Get gcpRole"
description: "Get a GCP role in a GCP authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get gcpRole
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [gcpRole](../resources/gcprole.md) object in a GCP authorization system.

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
GET /external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/roles/{gcpRoleId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [gcpRole](../resources/gcprole.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_gcprole"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{computedId}/graph.gcpAuthorizationSystem/roles/cm9sZXMvYmFja3VwZHIuY29tcHV0ZUVuZ2luZU9wZXJhdG9y
```


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.gcpRole"
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
    }
  ]
}
```

