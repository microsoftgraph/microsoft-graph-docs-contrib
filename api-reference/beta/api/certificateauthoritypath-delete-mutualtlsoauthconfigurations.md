---
title: "Delete a mutual TLS OAuth Configuration"
description: "Delete a mutual TLS OAuth Configuration."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
doc_type: apiPageType
---

# Delete mutualTlsOauthConfigurations
Namespace: microsoft.graph

Removes the specified mutualTlsOauthConfiguration resource.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`MutualTlsOauthConfiguration.ReadWrite.All`| Read and write all configurations used for mutual-TLS client authentication. | Allows the app to read and update configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. This includes adding and updating trusted certificate authorities. _(Granted to admin role on the device authority's AAD tenant)_|**Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

The `{id}` in the request is the value of the **id** property of the device template.

```http
DELETE /directory/certificateAuthorities/mutualTlsOauthConfigurations/{id}
```

## Request headers
See [Authorization](/graph/security-authorization) for more information about adding the Authorization Header. The field {token} should be replaced with the associated "Access Token".
| Name       | Description|
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

- If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
- Mutualtlsauthconfigurations cannot be deleted until all linked DeviceTemplates and their linked devices are deleted. Failure to do so will result in a `400` response.
- Reference [MSGraph error responses and resource types](https://docs.microsoft.com/en-us/graph/errors) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`204` | Request was successful ||
|`400` | DeviceTemplates cannot be deleted until all linked devices are deleted. | Failure to do so will result in a `400` response. |

## Example
### Request

# [HTTP](#tab/http)

```http
DELETE /directory/certificateAuthorities/mutualTlsOauthConfigurations/2d62b12a-0163-457d-9796-9602e9807e1

HTTP/1.1 204 NO CONTENT
```

### Response

```http
HTTP/1.1 204 No Content
```


