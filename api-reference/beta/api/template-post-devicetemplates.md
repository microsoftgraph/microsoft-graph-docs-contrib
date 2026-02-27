---
title: "Create deviceTemplate"
description: "Create a new deviceTemplate used to identify attributes and manage a group of devices with similar characteristics."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 12/31/2024
---

# Create deviceTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [deviceTemplate](../resources/devicetemplate.md) used to identify attributes and manage a group of devices with similar characteristics.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "template_post_devicetemplates" } -->
[!INCLUDE [permissions-table](../includes/permissions/template-post-devicetemplates-permissions.md)]

[!INCLUDE [rbac-devicestemplate-apis](../includes/rbac-for-apis/rbac-devicetemplate-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /directory/templates/deviceTemplates
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [deviceTemplate](../resources/devicetemplate.md) object.

You can specify the following properties when you create a **deviceTemplate**.

|Property|Type|Description|
|:---|:---|:---|
|deviceAuthority | String | A tenant-defined name for the party that's responsible for provisioning and managing devices on the Microsoft Entra tenant. For example, Tailwind Traders (the manufacturer) makes security cameras that are installed in customer buildings and managed by Lakeshore Retail (the device authority). This value is provided to the customer by the device authority (manufacturer or reseller). Required.|
|manufacturer|String|Manufacturer name. Required.|
|model|String|Model name. Required.|
|mutualTlsOauthConfigurationId|String|Object ID of the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md). This value isn't required if self-signed certificates are used instead of trusted root certificates. Optional. |
|mutualTlsOauthConfigurationTenantId|String|ID (tenant ID for device authority) of the tenant that contains the [mutualTlsOauthConfiguration](../resources/mutualtlsoauthconfiguration.md). This value isn't required if self-signed certificates are used instead of trusted root certificates. Optional. |
|operatingSystem|String|Operating system type. Optional.|
|owners@odata.bind|String collection| List of IDs for owners to add to the device template. Only the following [directoryObject](../resources/directoryobject.md) types are supported as owners: [service principals](..\resources\serviceprincipal.md), [users](..\resources\users.md), or [applications](..\resources\application.md). Optional. |

## Response

If successful, this method returns a `201 Created` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body. If a validation failure occurs during the certificate validation steps, the method returns a `400 Bad Request` along with the message, "Unable to validate device certificate".

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Example 1: Create a new device template

The following example shows how to create a new [deviceTemplate](../resources/devicetemplate.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_devicetemplate_from_"
}
-->
```http
POST https://graph.microsoft.com/beta/directory/templates/deviceTemplates
Content-Type: application/json
Content-length: 106

{
  "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4445",
  "deviceAuthority": "Lakeshore Retail",
  "manufacturer": "Tailwind Traders",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-devicetemplate-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-devicetemplate-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-devicetemplate-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-devicetemplate-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-devicetemplate-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-devicetemplate-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-devicetemplate-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates/$entity",
  "id": "c0ff9329-3596-4ece-8aa9-3dd23a925356",
  "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4445",
  "deletedDateTime": null,
  "deviceAuthority": "Lakeshore Retail",
  "manufacturer": "Tailwind Traders",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT"
}
```

### Example 2: Create a device template with an owner

The following example shows how to create a new [deviceTemplate](../resources/devicetemplate.md) with an owner.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_devicetemplate_from_with_owner"
}
-->
```http
POST https://graph.microsoft.com/beta/directory/templates/deviceTemplates
Content-Type: application/json
Content-length: 106

{
  "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4445",
  "deviceAuthority": "Lakeshore Retail",
  "manufacturer": "Tailwind Traders",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT",
  "owners@odata.bind": [
    "https://graph.microsoft.com/beta/users/aaaaaaaa-bbbb-cccc-1111-222222222222"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-devicetemplate-from-with-owner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-devicetemplate-from-with-owner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-devicetemplate-from-with-owner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-devicetemplate-from-with-owner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-devicetemplate-from-with-owner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-devicetemplate-from-with-owner-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-devicetemplate-from-with-owner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates/$entity",
  "id": "c0ff9329-3596-4ece-8aa9-3dd23a925356",
  "mutualTlsOauthConfigurationId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "mutualTlsOauthConfigurationTenantId": "00001111-aaaa-2222-bbbb-3333cccc4445",
  "deletedDateTime": null,
  "deviceAuthority": "Lakeshore Retail",
  "manufacturer": "Tailwind Traders",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT"
}
```
