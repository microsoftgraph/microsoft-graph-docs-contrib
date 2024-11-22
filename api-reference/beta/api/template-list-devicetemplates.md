---
title: "List deviceTemplate"
description: "List device templates."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
---
# List DeviceTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of devicesTemplates registered in the directory.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "template-list-devicetemplates-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`DeviceTemplate.Read.All`|Read  device templates | Allows the app to read all device templates, on behalf of the signed in user. _(Granted to the device authority's app on the customer's EntraId tenant)_|**Application-only**|**Yes**|List, Get|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates |Allows the user to create and update DeviceTemplate objects. _(Granted to admin on the customer's EntraId tenant)_|**Application** & **Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates
```

## Optional query parameters
This method supports the `$select` & `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

### Example Filters/Select
|Pattern|Supported|Syntax|
|-------|:---------:|------|
|Filter|✓|`/directory/templates/deviceTemplates/?$filter=id eq '{guid}'`|
|Select|✓|`/directory/templates/deviceTemplates/?$select=id,operatingSystem'`|


## Request headers
| Name | Type |	Description |
|--|--|--|
Authorization	| string	| Bearer {token}. Required. |

## Request Body
Do not supply a request body for this method.

## Response
- If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "list_devicetemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates
Content-Type: application/json
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.deviceTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates",
    "value": [
        {
            "@odata.type": "#microsoft.graph.deviceTemplate",
            "id": "a4d7a4eb-8ade-d364-56b2-bcb659b3c6f9",
            "deletedDateTime": "String (timestamp)",
            "mutualTlsOauthConfigurationId": "String",
            "mutualTlsOauthConfigurationTenantId": "String",
            "deviceAuthority": "String",
            "manufacturer": "String",
            "model": "String",
            "operatingSystem": "String"
        }
    ]
}
```

### Example 2: Get a list of device and return only its ID and operatingSystem properties

#### Request

The following request retrieves the **id** and **operatingSystem** properties of a device.

```http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates?$select=id,operatingSystem
```

#### Response

This is an example response.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates(id,operatingSystem)",
    "value": [
        {
            "id": "00f1e7a4-de6d-4070-84df-8aab629c4d1e",
            "operatingSystem": "BootOS"
        },
        {
            "id": "03118739-2050-44cd-98ed-ed28b147af70",
            "operatingSystem": "BootOS"
        },
        {
            "id": "037a01c6-2605-4eda-b746-9e41ecca1623",
            "operatingSystem": "Linux"
        }
    ]
}
```



### Example 3: Get a list of devices and expand device template owners & device instances

#### Request

The following request retrieves a list of device templates, and expands the device template owners & device instances.

```http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates?$expand=deviceInstances&owners
```

#### Response

This is an example response (*truncated for readability)*

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/templates/deviceTemplates(deviceInstances())",
    "value": [
        {
            "id": "045729...aa0",
            "deletedDateTime": null,
            "mutualTlsOauthConfigurationId": "4cf16...65",
            "mutualTlsOauthConfigurationTenantId": "59d18...ad5",
            "deviceAuthority": "test",
            "manufacturer": "test.com",
            "model": "DeepFreezerModelAB",
            "operatingSystem": "Linux",
            "deviceInstances": [
                {
                    "id": "f574...ef",
                    "deletedDateTime": null,
                    "accountEnabled": true,
                    "approximateLastSignInDateTime": "2022-05-26T00:40:51Z",
                    "complianceExpirationDateTime": null,
                    "createdDateTime": "2022-05-26T00:40:51Z",
                    "deviceCategory": null,
                    "deviceId": "1de51...f66",
                    "externalSourceName": "test2-alpha",
                    ...
                    "manufacturer": "test2.com",
                    "mdmAppId": null,
                    "model": "DeepFreezerModelAB",
                    "operatingSystem": "Linux",
                    "operatingSystemVersion": "ubuntu 20.04",
                    "profileType": "IoT",
                    "registrationDateTime": null,
                    "sourceType": "External",
                    "systemLabels": [],
                    "trustType": null,
                    "alternativeSecurityIds": [
                        {
                            "type": 2,
                            "identityProvider": null,
                            "key": "WAA...BAA=="
                        }
                    ],
                    "extensionAttributes": {
                        "extensionAttribute1": null,
                        ...
                        "extensionAttribute15": null
                    }
                }
            ]
        },
        {
            "id": "bae...7e",
            "deletedDateTime": null,
            "mutualTlsOauthConfigurationId": "68f..d35b",
            "mutualTlsOauthConfigurationTenantId": "59...ad5",
            "deviceAuthority": "test3",
            "manufacturer": "test3.com",
            "model": "DeepFreezerModelAB",
            "operatingSystem": "Linux",
            "deviceInstances": []
        }        
    ]
}
```