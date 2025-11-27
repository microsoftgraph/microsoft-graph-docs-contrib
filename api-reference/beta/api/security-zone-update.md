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

Update the properties of a zone object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-zone-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-zone-update-permissions.md)]

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
|displayName|String|Human-readable name of the zone. Optional.|
|description|String|Description of the zone. Optional.|



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
PATCH https://graph.microsoft.com/beta/security/zones/{zoneId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.zone",
  "displayName": "String",
  "description": "String",
  "created": {
    "@odata.type": "microsoft.graph.security.auditInfo"
  },
  "modified": {
    "@odata.type": "microsoft.graph.security.auditInfo"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.zone",
  "id": "03f98aee-fee9-06b4-e5d3-647ef536acac",
  "displayName": "String",
  "description": "String",
  "created": {
    "@odata.type": "microsoft.graph.security.auditInfo"
  },
  "modified": {
    "@odata.type": "microsoft.graph.security.auditInfo"
  }
}
```

