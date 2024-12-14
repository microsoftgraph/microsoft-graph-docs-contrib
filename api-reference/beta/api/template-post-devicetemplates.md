---
title: "Create deviceTemplate"
description: "Create a new deviceTemplate used to identify attributes and manage a group of devices with similar characteristics."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# Create deviceTemplate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [deviceTemplate](../resources/devicetemplate.md) used to identify attributes and manage a group of devices with similar characteristics.

When you create a **deviceTemplate**, the properties **mutualTlsOauthConfigurationId** and **mutualTlsOauthConfigurationTenantId** in the body of the message aren't required if you use self-signed certificates instead of trust root certificates.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "template-post-devicetemplates-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/template-post-devicetemplates-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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
|deviceAuthority | String | A generic term that refers to the device manufacturer, reseller, or supplier responsible for provisioning and managing devices on a customer's EntraID tenant. For example, Acme (the manufacturer) makes security cameras that are installed in customer buildings and managed by ABC Company (the device authority). Required.|
|manufacturer|String|Manufacturer name. Required.|
|model|String|Model name. Required.|
|mutualTlsOauthConfigurationId|String|Object ID of the CertificateBasedDeviceAuthConfiguration. This value isn't set if self-signed certificates are used instead of trusted root certificates. Optional. |
|mutualTlsOauthConfigurationTenantId|String|ID of the tenant that contains the CertificateBasedDeviceAuthConfiguration (EntraID Tenant ID for device authority). This value isn't set if self-signed certificates are used instead of trusted root certificates. Optional. |
|operatingSystem|String|Operating system type. Optional.|
|"owners@odata.bind"|String| |

## Response

If successful, this method returns a `201 Created` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body. If a validation failure occurs during the certificate validation steps, the method returns a `400 Bad Request` along with the message, "Unable to validate device certificate".

For more information, see [Microsoft Graph error responses and resource types](/graph/errors).

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_devicetemplate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/templates/deviceTemplates
Content-Type: application/json
Content-length: 106

{
  "mutualTlsOauthConfigurationId": "eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "mutualTlsOauthConfigurationTenantId": "39cdb54e-21ca-4d66-bacd-f9a5b945b322",
  "deviceAuthority": "ADT",
  "manufacturer": "Acme",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates/$entity",
  "id": "c0ff9329-3596-4ece-8aa9-3dd23a925356",
  "mutualTlsOauthConfigurationId": "eec5ba11-2fc0-4113-83a2-ed986ed13cdb",
  "mutualTlsOauthConfigurationTenantId": "39cdb54e-21ca-4d66-bacd-f9a5b945b322",
  "deletedDateTime": null,
  "deviceAuthority": "ADT",
  "manufacturer": "Acme",
  "model": "DeepFreezerModelAB",
  "operatingSystem": "WindowsIoT"
}
```
