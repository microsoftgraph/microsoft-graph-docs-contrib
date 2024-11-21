---
title: "Add deviceTemplate owners"
description: "Add owners of a device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Add DeviceTemplate Owners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add new owner of a deviceTemplate object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions-reference.md).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-post-owners-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates |Allows the user to create and update DeviceTemplate objects. _(Granted to admin on the customer's EntraId tenant)_|**Application** & **Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
POST /directory/templates/deviceTemplates/{id}/owners/$ref
```

## Request headers
| Name | Type |	Description |
|--|--|--|
Authorization	| string	| Bearer {token}. Required. |

## Request Body
|Property|Type|Description|Required|
|-|-|-|-|
|`@odata.id`|`String`|A string associated with the userid of the target user in the form of: `https://graph.microsoft.com/beta/users/{id}`  |No|

## Response
- If successful, this method returns a `200 OK` response code and a [deviceTemplate](../resources/devicetemplate.md) object in the response body.
- Reference [MSGraph error responses and resource types](../../../concepts/errors.md) for more information regarding general error codes and error conditions.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_directoryobject_from_directoryobjects"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/owners/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/users/4vfaf3ac-5122-4a25-98d8-b32c091f441f"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
  "deletedDateTime": "String (timestamp)"
}
```
