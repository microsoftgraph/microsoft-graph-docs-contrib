---
title: "Create a Device Template"
description: "Post a new device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Create DeviceTemplate
Namespace: microsoft.graph

Add a new [deviceTemplate](../resources/devicetemplate.md) used to identify attributes & manage a group of devices with similar characteristics. 

When creating the DeviceTemplate, the properties  `mutualTlsOauthConfigurationId` and `mutualTlsOauthConfigurationTenantId` in the body of the message isn't required if using self signed certificates instead of trust root certificates.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "template-post-devicetemplates-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates |Allows the user to create and update DeviceTemplate objects. _(Granted to admin on the customer's EntraId tenant)_|**Application** and **Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP Request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/templates/deviceTemplates
```

### Request headers
| Name | Type |	Description | Required |
|--|--|--|--|
| Authorization	| string	| Bearer {token}. | Yes |
| Content-Type  | string  | application/json. | Yes |

### Request Body
In the request body, supply a JSON representation of the [deviceTemplate](../resources/devicetemplate.md) object.

You can specify the following properties when creating a **deviceTemplate**.

|Property|Type|Description|Required|
|-|-|-|-|
|`mutualTlsOauthConfigurationId`|`String`|Object ID of CertificateBasedDeviceAuthConfiguration - _Not set if using self signed certificates instead of trust root certificates._|No|
|`mutualTlsOauthConfigurationTenantId`|`String`|ID of the tenant that contains the CertificateBasedDeviceAuthConfiguration (Device Authority's EntraId Tenant ID) - _Not set if using self signed certificates instead of trust root certificates._|No|
|`deviceAuthority` | `String` | `deviceAuthority` is used as a generic term that could refer to the device manufacturer or some reseller or supplier who is responsible for provisioning and managing these devices on a customer's EntraId tenant. For example, Acme (`manufacturer`) makes security cameras that are installed in customer buildings and managed by ABC Company (`deviceAuthority`). | Yes 
|`manufacturer`|`String`|Manufacturer name|Yes|
|`model`|`String`|Model name | Yes|
|`operatingSystem`|`String`|OS type | No |

### Response
- If successful, this method returns a `201 Created` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`201` | Resource was created |Request was successful|
|`403` | Validation failure in any of the certificate validation steps mentioned | Unable to validate device certificate|


## Example

### Request
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
    "operatingSystem": "WindowsIoT",
}
```

### Response
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