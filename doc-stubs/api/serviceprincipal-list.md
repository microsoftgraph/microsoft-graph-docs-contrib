---
title: "List servicePrincipals"
description: "Get a list of the servicePrincipal objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List servicePrincipals
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
GET https://graph.microsoft.com/beta/servicePrincipals
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.servicePrincipal)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.servicePrincipal",
      "id": "220533cb-33cb-2205-cb33-0522cb330522",
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
      "api": {
        "@odata.type": "microsoft.graph.apiServicePrincipal"
      },
      "appData": "String",
      "appDescription": "String",
      "appDisplayName": "String",
      "appId": "String",
      "applicationTemplateId": "String",
      "appMetadata": {
        "@odata.type": "microsoft.graph.appMetadata"
      },
      "appOwnerOrganizationId": "Guid",
      "appRoleAssignmentRequired": "Boolean",
      "appRoles": [
        {
          "@odata.type": "microsoft.graph.appRole"
        }
      ],
      "customSecurityAttributes": {
        "@odata.type": "microsoft.graph.customSecurityAttributeValue"
      },
      "description": "String",
      "disabledByMicrosoftStatus": "String",
      "displayName": "String",
      "errorUrl": "String",
      "hasPermissionClassifications": "Boolean",
      "homepage": "String",
      "info": {
        "@odata.type": "microsoft.graph.informationalUrl"
      },
      "isManagementRestricted": "Boolean",
      "keyCredentials": [
        {
          "@odata.type": "microsoft.graph.keyCredential"
        }
      ],
      "loginUrl": "String",
      "logoutUrl": "String",
      "managedIdentityResourceId": "String",
      "microsoftPolicyGroup": "Boolean",
      "notes": "String",
      "notificationEmailAddresses": [
        "String"
      ],
      "passwordCredentials": [
        {
          "@odata.type": "microsoft.graph.passwordCredential"
        }
      ],
      "passwordSingleSignOnSettings": {
        "@odata.type": "microsoft.graph.passwordSingleSignOnSettings"
      },
      "preferredSingleSignOnMode": "String",
      "preferredTokenSigningKeyEndDateTime": "String (timestamp)",
      "preferredTokenSigningKeyThumbprint": "String",
      "publishedPermissionScopes": [
        {
          "@odata.type": "microsoft.graph.permissionScope"
        }
      ],
      "publisherName": "String",
      "replyUrls": [
        "String"
      ],
      "resourceSpecificApplicationPermissions": [
        {
          "@odata.type": "microsoft.graph.resourceSpecificPermission"
        }
      ],
      "samlMetadataUrl": "String",
      "samlSingleSignOnSettings": {
        "@odata.type": "microsoft.graph.samlSingleSignOnSettings"
      },
      "servicePrincipalNames": [
        "String"
      ],
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

