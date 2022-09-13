---
title: "List appRoleAssignedResources (service principals that a user has appRoleAssignments to)"
description: "Get the service principals to which the user has an app role assignment either directly or through group membership."
author: "eringreenlee"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# List appRoleAssignedResources (service principals that a user has appRoleAssignments to)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the servicePrincipal resources from the appRoleAssignedResources navigation property.

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
GET /me/appRoleAssignedResources?$count=true
ConsistencyLevel: eventual

GET /users/{usersId}/appRoleAssignedResources?$count=true
ConsistencyLevel: eventual
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
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_appRoleAssignedResources_users"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/appRoleAssignedResources?$count=true
ConsistencyLevel: eventual
```


### Response
The following is an example of the response
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
      "id": "08a136b8-7fd3-c6bf-3ba7-14adb3ad0de1",
      "deletedDateTime": "String (timestamp)",
      "passwordSingleSignOnSettings": {
        "@odata.type": "microsoft.graph.passwordSingleSignOnSettings"
      },
      "accountEnabled": "Boolean",
      "addIns": [
        {
          "@odata.type": "microsoft.graph.addIn"
        }
      ],
      "alternativeNames": [
        "String"
      ],
      "appDescription": "String",
      "appDisplayName": "String",
      "appId": "String",
      "applicationTemplateId": "String",
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
      "homepage": "String",
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
      "publishedPermissionScopes": [
        {
          "@odata.type": "microsoft.graph.permissionScope"
        }
      ],
      "passwordCredentials": [
        {
          "@odata.type": "microsoft.graph.passwordCredential"
        }
      ],
      "preferredTokenSigningKeyEndDateTime": "String (timestamp)",
      "preferredTokenSigningKeyThumbprint": "String",
      "preferredSingleSignOnMode": "String",
      "publisherName": "String",
      "replyUrls": [
        "String"
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
