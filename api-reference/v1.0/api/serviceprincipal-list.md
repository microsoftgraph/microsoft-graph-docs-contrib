---
title: "List servicePrincipals"
description: "Retrieve a list of servicePrincipal objects."
author: "davidmu1"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List servicePrincipals

Retrieve a list of servicePrincipal objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.Read.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.ReadWrite.All, Directory.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals
```
## Optional query parameters

This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required.  |
| Content-type   | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [servicePrincipal](../resources/serviceprincipal.md) objects in the response body.

## Examples
### Request
Here is an example of the request.

<!-- {
  "blockType": "request",
  "name": "list_serviceprincipal"
}-->

```http
GET https://graph.microsoft.com/v1.0/serviceprincipals
```

### Response
Here is an example of the response. 

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [{
      "accountEnabled": true,
      "addIns": [],
      "alternativeNames": ["http://contoso/a7770d29-4321-41a6-b863-ca11d6639448"],
      "appDisplayName": "My app",
      "appId": "appId-value",
      "appOwnerOrganizationId": "65415bb1-9267-4313-bbf5-ae259732ee12",
      "appRoleAssignmentRequired": true "appRoles": [],
      "displayName": "My app instance in tenant",
      "endpoints": [],
      "homepage": null,
      "id": "00af5dfb-85da-4b41-a677-0c6b86dd34f8",
      "info": {
          "termsOfServiceUrl": null,
          "supportUrl": null,
          "privacyStatementUrl": null,
          "marketingUrl": null,
          "logoUrl": null
      },
      "keyCredentials": [],
      "logoutUrl": null,
      "oauth2PermissionScopes": [],
      "passwordCredentials": [],
      "publisherName": null,
      "replyUrls": [],
      "servicePrincipalNames": [],
      "servicePrincipalType": null,
      "tags": [],
      "tokenEncryptionKeyId": null
    }]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List servicePrincipals",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
