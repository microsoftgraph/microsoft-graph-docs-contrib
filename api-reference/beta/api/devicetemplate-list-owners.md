---
title: "Get deviceTemplate owners"
description: "Get owners of a device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Get DeviceTemplate Owners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get owners of a deviceTemplate object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`DeviceTemplate.Read.All`|Read  device templates | Allows the app to read all device templates, on behalf of the signed in user. _(Granted to the device authority's app on the customer's EntraId tenant)_|**Application-only**|**Yes**|List, Get|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates |Allows the user to create and update DeviceTemplate objects. _(Granted to admin on the customer's EntraId tenant)_|**Application** & **Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates/{id}/owners
```

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

### Example 1: Get a deviceTemplate owner by ID

#### Request

``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e/owners
```

#### Response
>**Note:** The response object shown here might be shortened for readability.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": []
}
```
