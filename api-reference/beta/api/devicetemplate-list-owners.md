---
title: "Get deviceTemplate owners"
description: "Get owners of a device template."
author: "ploegert"
ms.localizationpriority: medium
ms.prod: "identity-and-access"
ms.subservice: "entra-id"
doc_type: apiPageType
---

# Get DeviceTemplate Owners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get owners of a [deviceTemplate](../resources/devicetemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-list-owners-permissions"
}
-->

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
- Reference [MSGraph error responses and resource types](../../../concepts/errors.md) for more information regarding general error codes and error conditions.

## Examples

### Example 1: Get a deviceTemplate owner by ID

#### Request

<!-- {
  "blockType": "request",
  "name": "devicetemplate-list-owners-permissions"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e/owners
```

#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
    "value": [
    {
      "@odata.type": "#microsoft.graph.servicePrincipal",
      "id": "4vfaf3ac-5122-4a25-98d8-b32c091f441f",
      "deletedDateTime": null,
      "accountEnabled": true,
      "alternativeNames": [],
      "createdDateTime": "2024-09-11T21:21:25Z",
      "deviceManagementAppType": null,
      "appDescription": null,
      "appDisplayName": "test",
      "appId": "1a9da825-c78b-4531-afcf-c9443adaa442",
      "applicationTemplateId": null,
      "appOwnerOrganizationId": "5ea2e292-4586-4888-486a-a0661219fdab",
      "appRoleAssignmentRequired": false,
      "description": null,
      "disabledByMicrosoftStatus": null,
      "displayName": "test",
      "errorUrl": null,
      "homepage": null,
      "isAuthorizationServiceEnabled": false,
      "isManagementRestricted": null,
      "loginUrl": null,
      "logoutUrl": null,
      "notes": null,
      "notificationEmailAddresses": [],
      "preferredSingleSignOnMode": null,
      "preferredTokenSigningKeyEndDateTime": null,
      "preferredTokenSigningKeyThumbprint": null,
      "publisherName": "Workplace Join Android",
      "replyUrls": [],
      "samlMetadataUrl": null,
      "samlSLOBindingType": "httpRedirect",
      "servicePrincipalNames": [
        "1a9da825-ch8b-4531-afcf-c9443adaa442"
      ],
      "servicePrincipalType": "Application",
      "signInAudience": "AzureADMyOrg",
      "tags": [
        "HideApp",
        "WindowsAzureActiveDirectoryIntegratedApp"
      ],
      "tokenEncryptionKeyId": null,
      "certification": null,
      "samlSingleSignOnSettings": null,
      "addIns": [],
      "api": {
        "resourceSpecificApplicationPermissions": []
      },
      "appRoles": [],
      "info": {
        "termsOfServiceUrl": null,
        "supportUrl": null,
        "privacyStatementUrl": null,
        "marketingUrl": null,
        "logoUrl": null
      },
      "keyCredentials": [],
      "publishedPermissionScopes": [],
      "passwordCredentials": [],
      "resourceSpecificApplicationPermissions": [],
      "verifiedPublisher": {
        "displayName": null,
        "verifiedPublisherId": null,
        "addedDateTime": null
      }
    }
  ]
}
```
