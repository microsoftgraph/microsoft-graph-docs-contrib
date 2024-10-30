---
title: "sensor: getDeploymentPackageUri"
description: "Get the sensor deployment package URL and version."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 10/29/2024
---

# sensor: getDeploymentPackageUri

Namespace: microsoft.graph.security

Get the [sensor](../resources/security-sensor.md) deployment package URL and version. You can use this URL to download the installer to install the sensor on a server.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensor_getdeploymentpackageuri" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensor-getdeploymentpackageuri-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/sensors/getDeploymentPackageUri
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.security.sensorDeploymentPackage](../resources/security-sensordeploymentpackage.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sensorthis.getdeploymentpackageuri"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/identities/sensors/getDeploymentPackageUri
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensorDeploymentPackage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.security.sensorDeploymentPackage",
    "downloadUrl": "<Download URL string>",
    "version": "2.239.18124.58593"
  }
}
```
