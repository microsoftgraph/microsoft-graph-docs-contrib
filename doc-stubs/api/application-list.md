---
title: "List applications"
description: "Get a list of the application objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List applications
Namespace: microsoft.graph



Get a list of the [application](../resources/application.md) objects and their properties.

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
GET /applications
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

If successful, this method returns a `200 OK` response code and a collection of [application](../resources/application.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_application"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/applications
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.application)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.application",
      "id": "1984f5a6-f5a6-1984-a6f5-8419a6f58419",
      "deletedDateTime": "String (timestamp)",
      "addIns": [
        {
          "@odata.type": "microsoft.graph.addIn"
        }
      ],
      "api": {
        "@odata.type": "microsoft.graph.apiApplication"
      },
      "appId": "String",
      "applicationTemplateId": "String",
      "appRoles": [
        {
          "@odata.type": "microsoft.graph.appRole"
        }
      ],
      "isFallbackPublicClient": "Boolean",
      "identifierUris": [
        "String"
      ],
      "createdDateTime": "String (timestamp)",
      "description": "String",
      "disabledByMicrosoftStatus": "String",
      "publicClient": {
        "@odata.type": "microsoft.graph.publicClientApplication"
      },
      "displayName": "String",
      "groupMembershipClaims": "String",
      "info": {
        "@odata.type": "microsoft.graph.informationalUrl"
      },
      "isDeviceOnlyAuthSupported": "Boolean",
      "keyCredentials": [
        {
          "@odata.type": "microsoft.graph.keyCredential"
        }
      ],
      "logo": "Stream",
      "notes": "String",
      "oauth2RequirePostResponse": "Boolean",
      "optionalClaims": {
        "@odata.type": "microsoft.graph.optionalClaims"
      },
      "parentalControlSettings": {
        "@odata.type": "microsoft.graph.parentalControlSettings"
      },
      "passwordCredentials": [
        {
          "@odata.type": "microsoft.graph.passwordCredential"
        }
      ],
      "publisherDomain": "String",
      "requiredResourceAccess": [
        {
          "@odata.type": "microsoft.graph.requiredResourceAccess"
        }
      ],
      "signInAudience": "String",
      "spa": {
        "@odata.type": "microsoft.graph.spaApplication"
      },
      "tags": [
        "String"
      ],
      "tokenEncryptionKeyId": "Guid",
      "web": {
        "@odata.type": "microsoft.graph.webApplication"
      }
    }
  ]
}
```

