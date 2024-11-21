---
title: "Get deviceTemplate"
description: "Get a device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Get DeviceTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [deviceTemplate](../resources/devicetemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`DeviceTemplate.Read.All`|Read  device templates | Allows the app to read all device templates, on behalf of the signed in user. _(Granted to the device authority's app on the customer's EntraId tenant)_|**Application-only**|**Yes**|List, Get|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates |Allows the user to create and update DeviceTemplate objects. _(Granted to admin on the customer's EntraId tenant)_|**Application** and **Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
```http
GET /directory/templates/deviceTemplates/{id}
```

## Optional query parameters
This method supports the `$select` & `$filter` [OData query parameter](https://docs.microsoft.com/en-us/graph/query-parameters#filter-parameter) to help customize the response.

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
Don't supply a request body for this method.

## Response
- If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.
- Reference [MSGraph error responses and resource types](https://docs.microsoft.com/en-us/graph/errors) for more information regarding general error codes and error conditions.

## Examples

### Example 1: Get a deviceTemplate by ID with CA issued mtls certificate

#### Request
```http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e
```

#### Response
> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft/beta/$metadata#directory/templates/deviceTemplates/$entity",
    "id": "00f1e7a4-de6d-4070-84df-8aab629c4d1e",
    "deletedDateTime": null,
    "mutualTlsOauthConfigurationId": "3cdc013f-7db9-4139-819f-3fd0a3c99346",
    "mutualTlsOauthConfigurationTenantId": "f35bf5fa-7977-447c-a1af-4c457bad7d7e",
    "deviceAuthority": "Acme 1234",
    "manufacturer": "Acme",
    "model": "washer734",
    "operatingSystem": "BootOS"
}
```

### Example 2: Get a device and return only its ID and operatingSystem properties

#### Request

The following request retrieves the **id** and **operatingSystem** property of a device.

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
}
```

### Example 3: Get a device that uses a self-signed CA
This is an example response.

#### Request

``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1
```

#### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
Location: "https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1"
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