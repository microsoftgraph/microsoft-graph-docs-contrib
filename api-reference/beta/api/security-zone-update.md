---
title: "Update zone"
description: "Update the properties of a zone object."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update zone

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [zone](../resources/security-zone.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-zone-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-zone-update-permissions.md)]

[!INCLUDE [rbac-security-zone-apis-write](../includes/rbac-for-apis/rbac-security-zone-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/zones/{zoneId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the zone. Optional.|
|displayName|String|Human-readable name of the zone. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.zone](../resources/security-zone.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_zone"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/zones/05cfec937c214892a14448562ef4bf4a
Content-Type: application/json

{
  "displayName": "Updated Production Zone",
  "description": "Updated description for production environments"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/security/$metadata#zones/$entity",
  "@odata.type": "#microsoft.graph.security.zone",
  "id": "05cfec937c214892a14448562ef4bf4a",
  "displayName": "Updated Production Zone",
  "description": "Updated description for production environments",
  "created": {
    "by": "Yarin",
    "dateTime": "2023-10-01T12:00:00Z"
  },
  "modified": {
    "by": "Yarin",
    "dateTime": "2023-10-15T14:30:00Z"
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
      "id": "02687862-a843-4846-81f0-efe9ef244daa"
    },
    {
      "kind": "gcpProject",
      "id": "69483221284"
    }
  ]
}
```

