---
title: "userRegistrationDetails resource type"
description: "Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication)."
author: "danielwood95"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userRegistrationDetails](../api/userregistrationdetails-list.md)|[userRegistrationDetails](../resources/userregistrationdetails.md) collection|Get a list of the [userRegistrationDetails](../resources/userregistrationdetails.md) objects and their properties.|
|[Create userRegistrationDetails](../api/authenticationmethodsroot-post-userregistrationdetails.md)|[userRegistrationDetails](../resources/userregistrationdetails.md)|Create a new [userRegistrationDetails](../resources/userregistrationdetails.md) object.|
|[Get userRegistrationDetails](../api/userregistrationdetails-get.md)|[userRegistrationDetails](../resources/userregistrationdetails.md)|Read the properties and relationships of a [userRegistrationDetails](../resources/userregistrationdetails.md) object.|
|[Update userRegistrationDetails](../api/userregistrationdetails-update.md)|[userRegistrationDetails](../resources/userregistrationdetails.md)|Update the properties of a [userRegistrationDetails](../resources/userregistrationdetails.md) object.|
|[Delete userRegistrationDetails](../api/userregistrationdetails-delete.md)|None|Deletes a [userRegistrationDetails](../resources/userregistrationdetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|User object ID in Azure AD. Inherited from [entity](../resources/entity.md).|
|isMfaCapable|Boolean|Whether the user has registered a strong authentication method that is allowed by authentication method policy. Possible values are `true`, `false`.|
|isMfaRegistered|Boolean|Whether the user has registered a strong authentication method for multi-factor authentication. The method may not necessarily be allowed by authentication method policy. Possible values are `true`, `false`.|
|isPasswordlessCapable|Boolean|Whether the user has registered a Passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by authentication method policy. Possible values are `true`, `false`.|
|isSsprCapable|Boolean|Whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Possible values are `true`, `false`.|
|isSsprEnabled|Boolean|Whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Possible values are `true`, `false`.|
|isSsprRegistered|Boolean|Whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Possible values are `true`, `false`.|
|methodsRegistered|String collection|Collection of authentication methods registered, such as `mobilePhone`, `email`, `fido2`.|
|userDisplayName|String|User display name, such as `Abbe Smith`.|
|userPrincipalName|String|User Principal Name, such as `abbe@contoso.com`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userRegistrationDetails",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationDetails",
  "id": "String (identifier)",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "isMfaRegistered": "Boolean",
  "isMfaCapable": "Boolean",
  "isSsprRegistered": "Boolean",
  "isSsprEnabled": "Boolean",
  "isSsprCapable": "Boolean",
  "isPasswordlessCapable": "Boolean",
  "methodsRegistered": [
    "String"
  ]
}
```

