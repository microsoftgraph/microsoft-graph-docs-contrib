---
title: "sensor: getDeploymentAccessKey"
description: "Get the deployment access key associated with the workspace."
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 09/10/2024
---

# sensor: getDeploymentAccessKey

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the deployment access key associated with a Microsoft Defender for Identity, needed to install sensors associated with the workspace.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensor_getdeploymentaccesskey" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensor-getdeploymentaccesskey-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/identities/sensors/getDeploymentAccessKey
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.security.deploymentAccessKeyType](../resources/security-deploymentaccesskeytype.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sensorthis.getdeploymentaccesskey"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/identities/sensors/getDeploymentAccessKey
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sensorthisgetdeploymentaccesskey-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sensorthisgetdeploymentaccesskey-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sensorthisgetdeploymentaccesskey-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sensorthisgetdeploymentaccesskey-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sensorthisgetdeploymentaccesskey-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sensorthisgetdeploymentaccesskey-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sensorthisgetdeploymentaccesskey-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.deploymentAccessKeyType"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.security.deploymentAccessKeyType",
    "sensorDeploymentAccessKey": "<Deployment access key (Secret)>"
  }
}
```
