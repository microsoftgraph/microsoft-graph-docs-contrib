---
title: "Create zone"
description: "Create a new zone object."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create zone

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [zone](../resources/security-zone.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-security-post-zones-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-security-post-zones-permissions.md)]

[!INCLUDE [rbac-security-zone-apis-write](../includes/rbac-for-apis/rbac-security-zone-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/zones
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [zone](../resources/security-zone.md) object.

You can specify the following properties when you create a **zone**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the zone. Optional.|
|displayName|String|Human-readable name of the zone. Required.|
|environments|[microsoft.graph.security.environment](../resources/security-environment.md) collection|Collection of environments to attach to the zone. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.security.zone](../resources/security-zone.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_zone_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/zones
Content-Type: application/json

{
  "displayName": "Production Zone",
  "description": "Zone for production environments",
  "environments": [
    {
      "kind": "awsAccount",
      "id": "181994123251"
    },
    {
      "kind": "awsAccount",
      "id": "326438728454"
    },
    {
      "kind": "azureSubscription",
      "id": "02687862-a843-4846-81f0-efe9ef244daa"
    },
    {
      "kind": "gcpProject",
      "id": "69483221284"
    }
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.zone"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/security/$metadata#zones/$entity",
  "@odata.type": "#microsoft.graph.security.zone",
  "id": "05cfec937c214892a14448562ef4bf4a",
  "displayName": "Production Zone",
  "description": "Zone for production environments",
  "created": {
    "by": "Yarin",
    "dateTime": "2023-10-01T12:00:00Z"
  },
  "modified": {
    "by": "Yarin",
    "dateTime": "2023-10-01T12:00:00Z"
  },
  "environments": [
    {
      "kind": "awsAccount",
      "id": "181994123251"
    },
    {
      "kind": "awsAccount",
      "id": "326438728454"
    },
    {
      "kind": "azureSubscription",
      "id": "02687862-a843-4846-81f0-efe9ef244daa"
    },
    {
      "kind": "gcpProject",
      "id": "69483221284"
    }
  ],
  "aggregations": [
    {
      "kind": "azureSubscription",
      "count": 1
    },
    {
      "kind": "awsAccount",
      "count": 2
    },
    {
      "kind": "gcpProject",
      "count": 1
    }
  ]
}
```

