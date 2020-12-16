---
title: "authentication resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authentication resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authentications](../api/authentication-list.md)|[authentication](../resources/authentication.md) collection|Get a list of the [authentication](../resources/authentication.md) objects and their properties.|
|[Create authentication](../api/authentication-create.md)|[authentication](../resources/authentication.md)|Create a new [authentication](../resources/authentication.md) object.|
|[Get authentication](../api/authentication-get.md)|[authentication](../resources/authentication.md)|Read the properties and relationships of an [authentication](../resources/authentication.md) object.|
|[Update authentication](../api/authentication-update.md)|[authentication](../resources/authentication.md)|Update the properties of an [authentication](../resources/authentication.md) object.|
|[Delete authentication](../api/authentication-delete.md)|None|Deletes an [authentication](../resources/authentication.md) object.|
|[List microsoftAuthenticatorMethods](../api/authentication-list-microsoftauthenticatormethods.md)|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection|Get the microsoftAuthenticatorAuthenticationMethod resources from the microsoftAuthenticatorMethods navigation property.|
|[Create microsoftAuthenticatorAuthenticationMethod](../api/authentication-post-microsoftauthenticatormethods.md)|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md)|Create a new microsoftAuthenticatorAuthenticationMethod object.|
|[List oathMethods](../api/authentication-list-oathmethods.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|Get the softwareOathAuthenticationMethod resources from the oathMethods navigation property.|
|[Create softwareOathAuthenticationMethod](../api/authentication-post-oathmethods.md)|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md)|Create a new softwareOathAuthenticationMethod object.|
|[List securityQuestionMethods](../api/authentication-list-securityquestionmethods.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) collection|Get the securityQuestionAuthenticationMethod resources from the securityQuestionMethods navigation property.|
|[Create securityQuestionAuthenticationMethod](../api/authentication-post-securityquestionmethods.md)|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md)|Create a new securityQuestionAuthenticationMethod object.|
|[List temporaryAccessPassMethods](../api/authentication-list-temporaryaccesspassmethods.md)|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) collection|Get the temporaryAccessPassAuthenticationMethod resources from the temporaryAccessPassMethods navigation property.|
|[Create temporaryAccessPassAuthenticationMethod](../api/authentication-post-temporaryaccesspassmethods.md)|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md)|Create a new temporaryAccessPassAuthenticationMethod object.|
|[List windowsHelloForBusinessMethods](../api/authentication-list-windowshelloforbusinessmethods.md)|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) collection|Get the windowsHelloForBusinessAuthenticationMethod resources from the windowsHelloForBusinessMethods navigation property.|
|[Create windowsHelloForBusinessAuthenticationMethod](../api/authentication-post-windowshelloforbusinessmethods.md)|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md)|Create a new windowsHelloForBusinessAuthenticationMethod object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|strongAuthenticationStatus|strongAuthenticationStatus|**TODO: Add Description**. Possible values are: `none`, `perUserMfaEnabled`, `perUserMfaEnforced`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|emailMethods|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|**TODO: Add Description**|
|fido2Methods|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|**TODO: Add Description**|
|methods|[authenticationMethod](../resources/authenticationmethod.md) collection|**TODO: Add Description**|
|microsoftAuthenticatorMethods|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection|**TODO: Add Description**|
|oathMethods|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|**TODO: Add Description**|
|operations|[longRunningOperation](../resources/longrunningoperation.md) collection|**TODO: Add Description**|
|passwordlessMicrosoftAuthenticatorMethods|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|**TODO: Add Description**|
|passwordMethods|[passwordAuthenticationMethod](../resources/passwordauthenticationmethod.md) collection|**TODO: Add Description**|
|phoneMethods|[phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) collection|**TODO: Add Description**|
|securityQuestionMethods|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) collection|**TODO: Add Description**|
|temporaryAccessPassMethods|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) collection|**TODO: Add Description**|
|windowsHelloForBusinessMethods|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authentication",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authentication",
  "id": "String (identifier)",
  "strongAuthenticationStatus": "String"
}
```

