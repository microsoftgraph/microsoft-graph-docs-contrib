---
title: "sensor: getDeploymentAccessKey"
description: "Get the sensor deployment access key"
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "Microsoft Defender For Identity"
doc_type: apiPageType
---

# sensor: getDeploymentAccessKey

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the sensor deployment access key.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-sensor-getdeploymentaccesskey-permissions"
}
-->
|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|SecurityIdentitiesSensors.ReadWrite.All|SecurityIdentitiesSensors.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|SecurityIdentitiesSensors.ReadWrite.All|SecurityIdentitiesSensors.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/sensors/getDeploymentAccessKey
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sensorthis.getdeploymentaccesskey"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/sensors/getDeploymentAccessKey
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.deploymentAccessKeyType"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "microsoft.graph.security.deploymentAccessKeyType"
  }
}
```