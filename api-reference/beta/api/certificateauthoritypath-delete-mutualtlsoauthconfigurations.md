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

Removes the specified [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resource.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions-reference.md).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-delete-mutualtlsoauthconfigurations-permissions"
}
-->

|ScopeName|DisplayName|Description|Type|Admin Consent?|Entities/APIs covered|
|-|-|-|-|-|-|
|`MutualTlsOauthConfiguration.ReadWrite.All`| Read and write all configurations used for mutual transport layer security (mTLS) client authentication. | Allows the app to read and update configuration used for OAuth 2.0 mutual-TLS client authentication, on behalf of the signed-in user. Permission includes adding and updating trusted certificate authorities. _(Granted to admin role on the device authority's EntraId tenant)_|**Delegated**|**Yes**|List, Get, Create, Update, Delete|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

The `{id}` in the request is the value of the **id** property of the device template.

```http
DELETE /directory/certificateAuthorities/mutualTlsOauthConfigurations/{id}
```

## Request headers
For more information about adding the Authorization Header, see [Authorization](/graph/security-authorization). The field {token} should be replaced with the associated "Access Token".

| Name       | Description|
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |

## Request body
Don't supply a request body for this method.

## Response

- If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.
- Mutualtlsauthconfigurations can't be deleted until all linked DeviceTemplates and their linked devices are deleted. Failure to do so results in a `400` response.
- Reference [MSGraph error responses and resource types](../../../concepts/errors.md) for more information regarding general error codes and error conditions.

|Response Code|Condition|Message|
|-|-|-|
|`204` | Request was successful ||
|`400` | DeviceTemplates can't be deleted until all linked devices are deleted. | Failure to do so results in a `400` response. |

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_mutualtlsoauthconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/certificateAuthorities/mutualTlsOauthConfigurations/{mutualTlsOauthConfigurationId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

