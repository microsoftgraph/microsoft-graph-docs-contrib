---
title: "List privateAccessSensor objects"
description: "Get a list of the privateAccessSensor objects and their properties."
author: "shahzad-khalid"
ms.date: 06/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List privateAccessSensor objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the privateAccessSensor objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onpremisespublishingprofile_list_sensors" } -->
[!INCLUDE [permissions-table](../includes/permissions/onpremisespublishingprofile-list-sensors-permissions.md)]

[!INCLUDE [rbac-app-proxy-read](../includes/rbac-for-apis/rbac-app-proxy-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /onPremisesPublishingProfiles/privateAccess/sensors
```

## Optional query parameters

This method supports `$filter`, `$select`, `$count`, `$top`, `$skip` the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [privateAccessSensor](../resources/privateaccesssensor.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_privateaccesssensor"
}
-->
``` http
GET https://graph.microsoft.com/beta/onPremisesPublishingProfiles/privateAccess/sensors
```

# [C#](#tab/csharp)

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-privateaccesssensor-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-privateaccesssensor-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-privateaccesssensor-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-privateaccesssensor-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-privateaccesssensor-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.privateAccessSensor"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#onPremisesPublishingProfiles('privateAccess')/sensors",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET onPremisesPublishingProfiles('<key>')/sensors?$select=externalIp,machineName",
    "value": [
    {
            "id": "7329c088-baef-4424-a354-681fc23c848f",
            "machineName": "machine.contoso.com",
            "externalIp": "192.68.16.158",
            "status": "active",
            "version": "1.0.0.0"
        }
    ]
}
```

