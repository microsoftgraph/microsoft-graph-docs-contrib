---
title: "Get zone"
description: "Get a zone object by a specific zoneId."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get zone

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [zone](../resources/security-zone.md) object by a specific **zoneId**.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-zone-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-zone-get-permissions.md)]

[!INCLUDE [rbac-security-zone-apis-read](../includes/rbac-for-apis/rbac-security-zone-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/zones/{zoneId}
```

## Optional query parameters

This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.zone](../resources/security-zone.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_zone"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/zones/03f98aee-fee9-06b4-e5d3-647ef536acac
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
HTTP/1.1 200 OK
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
  ],
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
      "id": "/subscriptions/02687862-a843-4846-81f0-efe9ef244daa"
    },
    {
      "kind": "gcpProject",
      "id": "69483221284"
    }
  ]
}
```

