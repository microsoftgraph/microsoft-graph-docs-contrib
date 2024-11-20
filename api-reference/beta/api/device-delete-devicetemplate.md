---
title: "Delete a Device Template"
description: "Delete a device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Delete DeviceTemplate
Namespace: microsoft.graph

Delete a registered Device Template. 

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
**Application-only**|**Yes**|List, Get|
|`DeviceTemplate.ReadWrite.All`|Read and write device templates | Allows the app to create, read, update, and delete the device template, on behalf of the signed in user. It also allows the app to add or remove owners on any device template. _(Granted to admin on the customer's Entra tenant)_|**Delegated** & **app-only**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.
<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/templates/deviceTemplates/{id}
```

## Request headers
| Name       | Description|
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |

## Request body
Don't supply a request body for this method.

## Response
- If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.
- Reference [MSGraph error responses and resource types](https://docs.microsoft.com/en-us/graph/errors) for more information regarding general error codes and error conditions.

> **Note:** DeviceTemplates can't be deleted until all linked devices are deleted. Failure to do so results in a `400` response.


|Response Code|Condition|Message|
|-|-|-|
|`204` | Request was successful ||
|`400` | DeviceTemplates can't be deleted until all linked devices are deleted. | Failure to do so results in a `400` response. |
|`403` | Caller isn't owner of the `deviceTemplate`| Caller isn't allowed to create devices based on this template|


## Example
### Request

# [HTTP](#tab/http)

```http
DELETE https://graph.microsoft.com/v1.0/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1

HTTP/1.1 204 NO CONTENT
```

### Response


```http
HTTP/1.1 204 No Content
```

## Example 2
### Request
If the user doesisn't have access to a given resource, the error emitted shows as:
```http
DELETE https://graph.microsoft.com/v1.0/directory/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1
```

### Response
```json
HTTP/1.1 403

{ "error": { "code": "authorization_error", "message": "Failed to authorize, token doesn't have the required permissions.", "innerError": { "date": "2022-05-26T01:12:14", "request-id": "19318138-3b82-410c-acff-821f07925027", "client-request-id": "0aa65d9c-a47c-566a-40a7-0261f0f5b6c3" } } }
```