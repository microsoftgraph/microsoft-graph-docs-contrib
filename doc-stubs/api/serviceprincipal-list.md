---
title: "List servicePrincipals"
description: "Get a list of the servicePrincipal objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List servicePrincipals
Namespace: microsoft.graph



Get a list of the [servicePrincipal](../resources/serviceprincipal.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [servicePrincipal](../resources/serviceprincipal.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_serviceprincipal"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/servicePrincipals
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.servicePrincipal)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.servicePrincipal",
      "id": "52ccc849-c849-52cc-49c8-cc5249c8cc52",
      "deletedDateTime": "String (timestamp)",
      "accountEnabled": "Boolean",
      "addIns": [
        {
          "@odata.type": "microsoft.graph.addIn"
        }
      ],
      "alternativeNames": [
        "String"
      ],
      "appDisplayName": "String",
      "appDescription": "String",
      "appId": "String",
      "applicationTemplateId": "String",
      "appOwnerOrganizationId": "Guid",
      "appRoleAssignmentRequired": "Boolean",
      "appRoles": [
        {
          "@odata.type": "microsoft.graph.appRole"
        }
      ],
      "description": "String",
      "disabledByMicrosoftStatus": "String",
      "displayName": "String",
      "homepage": "String",
      "hasPermissionClassifications": "Boolean",
      "info": {
        "@odata.type": "microsoft.graph.informationalUrl"
      },
      "keyCredentials": [
        {
          "@odata.type": "microsoft.graph.keyCredential"
        }
      ],
      "loginUrl": "String",
      "logoutUrl": "String",
      "notes": "String",
      "notificationEmailAddresses": [
        "String"
      ],
      "oauth2PermissionScopes": [
        {
          "@odata.type": "microsoft.graph.permissionScope"
        }
      ],
      "passwordCredentials": [
        {
          "@odata.type": "microsoft.graph.passwordCredential"
        }
      ],
      "preferredTokenSigningKeyThumbprint": "String",
      "preferredSingleSignOnMode": "String",
      "replyUrls": [
        "String"
      ],
      "servicePrincipalNames": [
        "String"
      ],
      "samlSingleSignOnSettings": {
        "@odata.type": "microsoft.graph.samlSingleSignOnSettings"
      },
      "servicePrincipalType": "String",
      "signInAudience": "String",
      "tags": [
        "String"
      ],
      "tokenEncryptionKeyId": "Guid"
    }
  ]
}
```

