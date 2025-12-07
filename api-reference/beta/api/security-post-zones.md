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

Create a new [Zone](../resources/security-zone.md) object. there is an option to provide a list of [Environment](../resources/security-Environment.md) objects to be included in the new Zone.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-post-zones-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-post-zones-permissions.md)]

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

In the request body, supply a JSON representation of the [microsoft.graph.security.zone](../resources/security-zone.md) object.

You can specify the following properties when creating a **zone**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Human-readable name of the zone. Required.|
|description|String|Optional description of the zone. Optional.|
|environments|Collection([microsoft.graph.security.environment](../resources/security-environment.md))|Collection of environments to attach to the zone. Optional.|



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
  "truncated": true,
  "@odata.type": "microsoft.graph.security.zone"
}
-->
``` http
HTTP/1.1 201 Created
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

