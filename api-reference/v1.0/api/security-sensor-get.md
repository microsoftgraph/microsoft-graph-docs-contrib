---
title: "Get sensor"
description: "Read the properties and relationships of a sensor object."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 10/29/2024
---

# Get sensor

Namespace: microsoft.graph.security

Read the properties and relationships of a [sensor](../resources/security-sensor.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sensor_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sensor-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/identities/sensors/{sensorId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.sensor](../resources/security-sensor.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["d31dd827-92cd-4cd6-b269-c151a0eec55d"],
  "name": "get_sensor"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/identities/sensors/d31dd827-92cd-4cd6-b269-c151a0eec55d
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sensor-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-sensor-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sensor-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sensor-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-sensor-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-sensor-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-sensor-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sensor"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.security.sensor",
    "id": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "displayName": "DC1",
    "sensorType": "domainControllerIntegrated",
    "version": "2.239.18124.58593",
    "deploymentStatus": "upToDate",
    "createdDateTime": "2023-11-16T09:41:24.2585071Z",
    "domainName": "domain1.test.local",
    "healthStatus": "healthy",
    "openHealthIssuesCount": 0,
    "settings": {
        "@odata.type": "microsoft.graph.security.sensorSettings",
        "description": "dc1 settings",
        "domainControllerDnsNames": [
            "DC1.domain1.test.local"
        ],
        "isDelayedDeploymentEnabled": true
    },
    "serviceStatus": "running"
}
```
