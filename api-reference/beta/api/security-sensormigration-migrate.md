---
title: "sensorMigration: migrate"
description: "Migrate the specified sensors to the unified security portal."
author: "SamuelBenichou"
ms.date: 03/23/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# sensorMigration: migrate

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Migrate the specified sensors to the unified security portal. This action initiates the migration process for one or more Microsoft Defender for Identity sensors.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-sensormigration-migrate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-sensormigration-migrate-permissions.md)]

[!INCLUDE [rbac-mdi-apis](../includes/rbac-for-apis/rbac-mdi-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/identities/sensorMigration/migrate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|sensorIds|String collection|The collection of sensor IDs to migrate.|

## Response

If successful, this action returns a `200 OK` response code and a [migrateSensorsResult](../resources/security-migratesensorsresult.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sensormigration_migrate"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/identities/sensorMigration/migrate
Content-Type: application/json

{
  "sensorIds": [
    "fdce0c43-15e8-e322-7656-aff297505af5",
    "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.migrateSensorsResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.migrateSensorsResult",
  "successfulMigrationSensorIds": [
    "fdce0c43-15e8-e322-7656-aff297505af5"
  ],
  "failedMigrationSensorIds": [
    "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
  ]
}
```