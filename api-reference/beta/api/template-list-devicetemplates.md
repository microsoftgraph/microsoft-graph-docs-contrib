---
title: "List deviceTemplates"
description: "List device templates."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
---
# List DeviceTemplates
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
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceTemplate",
  "isCollection": true
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
