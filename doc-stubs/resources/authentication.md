---
title: "authentication resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authentications](../api/authentication-list.md)|[authentication](../resources/authentication.md) collection|Get a list of the [authentication](../resources/authentication.md) objects and their properties.|
|[Create authentication](../api/authentication-create.md)|[authentication](../resources/authentication.md)|Create a new [authentication](../resources/authentication.md) object.|
|[Get authentication](../api/authentication-get.md)|[authentication](../resources/authentication.md)|Read the properties and relationships of an [authentication](../resources/authentication.md) object.|
|[Update authentication](../api/authentication-update.md)|[authentication](../resources/authentication.md)|Update the properties of an [authentication](../resources/authentication.md) object.|
|[Delete authentication](../api/authentication-delete.md)|None|Deletes an [authentication](../resources/authentication.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|policy|[authenticationMethodsPolicyEvaluation](../resources/authenticationmethodspolicyevaluation.md) collection|**TODO: Add Description**|
|strongAuthenticationStatus|strongAuthenticationStatus|**TODO: Add Description**. The possible values are: `none`, `perUserMfaEnabled`, `perUserMfaEnforced`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|emailMethods|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|**TODO: Add Description**|
|fido2Methods|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|**TODO: Add Description**|
|methods|[authenticationMethod](../resources/authenticationmethod.md) collection|**TODO: Add Description**|
|microsoftAuthenticatorMethods|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection|**TODO: Add Description**|
|operations|[longRunningOperation](../resources/longrunningoperation.md) collection|**TODO: Add Description**|
|passwordlessMicrosoftAuthenticatorMethods|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|**TODO: Add Description**|
|passwordMethods|[passwordAuthenticationMethod](../resources/passwordauthenticationmethod.md) collection|**TODO: Add Description**|
|phoneMethods|[phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) collection|**TODO: Add Description**|
|securityQuestionMethods|[securityQuestionAuthenticationMethod](../resources/securityquestionauthenticationmethod.md) collection|**TODO: Add Description**|
|softwareOathMethods|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|**TODO: Add Description**|
|temporaryAccessPassMethods|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) collection|**TODO: Add Description**|
|windowsHelloForBusinessMethods|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authentication",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authentication",
  "id": "String (identifier)",
  "policy": [
    {
      "@odata.type": "microsoft.graph.authenticationMethodsPolicyEvaluation"
    }
  ],
  "strongAuthenticationStatus": "String"
}
```

