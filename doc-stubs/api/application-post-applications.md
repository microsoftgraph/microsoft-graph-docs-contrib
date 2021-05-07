---
title: "Create application"
description: "Create a new application object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create application
Namespace: microsoft.graph



Create a new [application](../resources/application.md) object.

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
POST /applications
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [application](../resources/application.md) object.

The following table shows the properties that are required when you create the [application](../resources/application.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|addIns|[addIn](../resources/addin.md) collection|**TODO: Add Description**|
|api|[apiApplication](../resources/apiapplication.md)|**TODO: Add Description**|
|appId|String|**TODO: Add Description**|
|applicationTemplateId|String|**TODO: Add Description**|
|appRoles|[appRole](../resources/approle.md) collection|**TODO: Add Description**|
|isFallbackPublicClient|Boolean|**TODO: Add Description**|
|identifierUris|String collection|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|disabledByMicrosoftStatus|String|**TODO: Add Description**|
|publicClient|[publicClientApplication](../resources/publicclientapplication.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|groupMembershipClaims|String|**TODO: Add Description**|
|info|[informationalUrl](../resources/informationalurl.md)|**TODO: Add Description**|
|isDeviceOnlyAuthSupported|Boolean|**TODO: Add Description**|
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|**TODO: Add Description**|
|logo|Stream|**TODO: Add Description**|
|notes|String|**TODO: Add Description**|
|oauth2RequirePostResponse|Boolean|**TODO: Add Description**|
|optionalClaims|[optionalClaims](../resources/optionalclaims.md)|**TODO: Add Description**|
|parentalControlSettings|[parentalControlSettings](../resources/parentalcontrolsettings.md)|**TODO: Add Description**|
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|**TODO: Add Description**|
|publisherDomain|String|**TODO: Add Description**|
|requiredResourceAccess|[requiredResourceAccess](../resources/requiredresourceaccess.md) collection|**TODO: Add Description**|
|signInAudience|String|**TODO: Add Description**|
|spa|[spaApplication](../resources/spaapplication.md)|**TODO: Add Description**|
|tags|String collection|**TODO: Add Description**|
|tokenEncryptionKeyId|Guid|**TODO: Add Description**|
|web|[webApplication](../resources/webapplication.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [application](../resources/application.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_application_from_applications"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/applications
Content-Type: application/json
Content-length: 1690

{
  "@odata.type": "#Microsoft.DirectoryServices.application",
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
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.application"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

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
```

