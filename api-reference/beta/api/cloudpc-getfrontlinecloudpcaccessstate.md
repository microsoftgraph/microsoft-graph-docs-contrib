---
title: "cloudPC: getFrontlineCloudPcAccessState"
description: "Get the access state of a frontline Cloud PC."
author: "ningjingbogithub"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getFrontlineCloudPcAccessState
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [frontlineCloudPcAccessState](../resources/cloudpc.md#frontlinecloudpcaccessstate-values) of a frontline Cloud PC. 

This API only supports shared-use licenses. For more information, see [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md#cloudpcprovisioningtype-values). Shared-use licenses allow three users per license, with one user signed in at a time. Callers can get the latest frontline Cloud PC **accessState** and determine whether the frontline Cloud PC is accessible to a user. 

If a web client needs to connect to a frontline Cloud PC, the **sharedCloudPcAccessState** validates the bookmark scenario. If **sharedCloudPcAccessState** isn't active/activating/standbyMode, the web client shows a _bad bookmark_.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_getfrontlinecloudpcaccessstate" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-getfrontlinecloudpcaccessstate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To get the frontline Cloud PC access state of the signed-in user using delegated permission:

``` http
GET /me/cloudPCs/{cloudPCId}/getFrontlineCloudPcAccessState
```

To get the frontline Cloud PC access state of a signed-in administrator using delegated permission or application permission:

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/getFrontlineCloudPcAccessState
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [frontlineCloudPcAccessState](../resources/cloudpc.md#frontlinecloudpcaccessstate-values) object in the response body.

If the Cloud PC was provisioned as a dedicated device, this method returns a `400 Bad Request` response code.

## Examples

### Example 1: Get the frontline Cloud PC access state for the signed-in user

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_cloudpc.getFrontlineCloudPcAccessState"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/getFrontlineCloudPcAccessState
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-cloudpcgetfrontlinecloudpcaccessstate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-cloudpcgetfrontlinecloudpcaccessstate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-cloudpcgetfrontlinecloudpcaccessstate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-cloudpcgetfrontlinecloudpcaccessstate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-cloudpcgetfrontlinecloudpcaccessstate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-cloudpcgetfrontlinecloudpcaccessstate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-cloudpcgetfrontlinecloudpcaccessstate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-cloudpcgetfrontlinecloudpcaccessstate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Edm.String",
    "value": "noLicensesAvailable"
}
```

### Example 2: Get the frontline Cloud PC access state for the administrator

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc.getFrontlineCloudPcAccessState"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/getFrontlineCloudPcAccessState
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcgetfrontlinecloudpcaccessstate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcgetfrontlinecloudpcaccessstate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcgetfrontlinecloudpcaccessstate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcgetfrontlinecloudpcaccessstate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcgetfrontlinecloudpcaccessstate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcgetfrontlinecloudpcaccessstate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcgetfrontlinecloudpcaccessstate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcgetfrontlinecloudpcaccessstate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "string"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Edm.String",
    "value": "noLicensesAvailable"
}
```
