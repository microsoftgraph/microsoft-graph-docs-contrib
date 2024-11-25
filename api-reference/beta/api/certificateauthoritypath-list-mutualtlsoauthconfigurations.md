---
title: "List mutual TLS OAuth Configurations"
description: "List mutual TLS OAuth Configurations."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# List mutualTlsOauthConfigurations

Namespace: microsoft.graph

Lists available [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) resources.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /certificateAuthorities/mutualTlsOauthConfigurations
```

## Optional query parameters

This method supports the `$select` & `$filter` [OData query parameter](/graph/query-parameters) to help customize the response.

### Example Filters/Select

Reference MSGraph [documentation](/graph/query-parameters) for more details regarding the supported operations.
|Pattern|Supported|Description|Syntax|
|-------|:---------:|---|------|
| $count|✓|Retrieves the total count of matching resources.| `/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$count=true`|
| $filter|✓|Filters results (rows).| `/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=id eq '{guid}'`|
| $filter|✓|Filters results (rows). |`/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$filter=manufacturer eq '{manufacturer name}'`|
| $select|✓|Filters properties (columns).|`/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$select=id,operatingSystem'`|
| $orderBy|❌| Orders results. | `/directory/certificateAuthorities/mutualTlsOauthConfigurations?$orderby=displayName desc`
| $top|✓|Sets the page size of results.|`/directory/certificateAuthorities/mutualTlsOauthConfigurations/?$top=2'`|

## Request headers
For more information about adding the Authorization Header, see [Authorization](/graph/security-authorization). The field {token} should be replaced with the associated "Access Token".
| Name | Type |	Description |
|--|--|--|
Authorization	| string	| Bearer {token}. Required. |

## Request Body

Don't supply a request body for this method.

## Response

- If successful, this method returns a `200 OK` response code and a [mutualTlsOauthConfiguration](../resources/mutualTlsOauthConfiguration.md) object in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "certificateauthoritypath-list-mutualtlsoauthconfigurations-permissions"
}
-->

```http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/mutualTlsOauthConfigurations
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mutualTlsOauthConfiguration",
  "isCollection": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/mutualTlsOauthConfigurations",
    "value": [
        {
            "id": "0d23b3d1-fc7b-51f5-1b3c-a494b556ccb2",
            "deletedDateTime": null,
            "displayName": "Contoso",
            "tlsClientAuthParameter": "tls_client_auth_san_uri",
            "certificateAuthorities": [
                {
                "@odata.type": "microsoft.graph.certificateAuthority"
                }
            ]
        },
        {
            "id": "2809d65b-51f5-453e-1b3c-90ccc0a3ce22",
            "deletedDateTime": null,
            "displayName": "test1",
            "tlsClientAuthParameter": "tls_client_auth_san_uri",
            "certificateAuthorities": [
                {
                "@odata.type": "microsoft.graph.certificateAuthority"
                }
            ]
        },
        {
            "id": "2809d65b-b2f6-51f5-1b3c-2809d65b",
            "deletedDateTime": null,
            "displayName": "test2",
            "tlsClientAuthParameter": "tls_client_auth_san_email",
            "certificateAuthorities": [
                {
                "@odata.type": "microsoft.graph.certificateAuthority"
                }
            ]
        }
    ]
}
```
