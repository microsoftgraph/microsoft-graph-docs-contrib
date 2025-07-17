---
title: "userRegistrationDetails resource type"
description: "Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of. (For example, multifactor authentication, self-service password reset, and passwordless authentication.)"
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userRegistrationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the state of a user's authentication methods, including which methods are registered and which features the user is registered and capable of. For example, multifactor authentication, self-service password reset, and passwordless authentication. For more information about license requirements for this feature, see [Authentication Methods Activity: Permissions and licenses](/entra/identity/authentication/howto-authentication-methods-activity#permissions-and-licenses).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethodsroot-list-userregistrationdetails.md)|[userRegistrationDetails](../resources/userregistrationdetails.md) collection|Get a list of the authentication methods registered for a user as defined in the [userRegistrationDetails](../resources/userregistrationdetails.md) object.|
|[Get](../api/userregistrationdetails-get.md)|[userRegistrationDetails](../resources/userregistrationdetails.md)|Read the properties and relationships of a [userRegistrationDetails](../resources/userregistrationdetails.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultMfaMethod|defaultMfaMethodType|The method the user or admin selected as default for performing multifactor authentication for the user. The possible values are: `none`, `mobilePhone`, `alternateMobilePhone`, `officePhone`, `microsoftAuthenticatorPush`, `softwareOneTimePasscode`, `unknownFutureValue`.|
|id|String|User object identifier in Microsoft Entra ID. Inherited from [entity](../resources/entity.md).|
|isAdmin|Boolean|Indicates whether the user has an [admin role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) in the tenant. This value can be used to check the authentication methods that privileged accounts are registered for and capable of.|
|isMfaCapable|Boolean|Indicates whether the user has registered a strong authentication method for multifactor authentication. The method must be allowed by the [authentication methods policy](../resources/authenticationmethodspolicy.md). Supports `$filter` (`eq`).|
|isMfaRegistered|Boolean|Indicates whether the user has registered a strong authentication method for multifactor authentication. The method may not necessarily be allowed by the [authentication methods policy](../resources/authenticationmethodspolicy.md). Supports `$filter` (`eq`).|
|isPasswordlessCapable|Boolean|Indicates whether the user has registered a passwordless strong authentication method (including FIDO2, Windows Hello for Business, and Microsoft Authenticator (Passwordless)) that is allowed by the [authentication methods policy](../resources/authenticationmethodspolicy.md). Supports `$filter` (`eq`).|
|isSsprCapable|Boolean|Indicates whether the user has registered the required number of authentication methods for self-service password reset and the user is allowed to perform self-service password reset by policy. Supports `$filter` (`eq`).|
|isSsprEnabled|Boolean|Indicates whether the user is allowed to perform self-service password reset by policy. The user may not necessarily have registered the required number of authentication methods for self-service password reset. Supports `$filter` (`eq`).|
|isSsprRegistered|Boolean|Indicates whether the user has registered the required number of authentication methods for self-service password reset. The user may not necessarily be allowed to perform self-service password reset by policy. Supports `$filter` (`eq`).|
|isSystemPreferredAuthenticationMethodEnabled|Boolean|Indicates whether system preferred authentication method is enabled. If enabled, the system dynamically determines the most secure authentication method among the methods registered by the user. Supports `$filter` (`eq`).|
|lastUpdatedDateTime|DateTimeOffset|The date and time (UTC) when the report was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|methodsRegistered|String collection|Collection of authentication methods registered, such as `mobilePhone`, `email`, `passKeyDeviceBound`. Supports `$filter` (`any` with `eq`).|
|systemPreferredAuthenticationMethods|String collection|Collection of authentication methods that the system determined to be the most secure authentication methods among the registered methods for second factor authentication. Possible values are: `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, `none`, `unknownFutureValue`. Supports `$filter` (`any` with `eq`).|
|userDisplayName|String| The user display name, such as `Adele Vance`. Supports `$filter` (`eq`, `startsWith`) and `$orderby`.|
|userPreferredMethodForSecondaryAuthentication|userDefaultAuthenticationMethod|The method the user selected as the default second-factor for performing multifactor authentication. Possible values are: `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, `none`, `unknownFutureValue`.|
|userPrincipalName|String|The user principal name, such as `AdeleV@contoso.com`. Supports `$filter` (`eq`, `startsWith`) and `$orderby`.|
|userType|signInUserType|Identifies whether the user is a member or guest in the tenant. The possible values are: `member`, `guest`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
  "defaultMfaMethod": "String",
  "id": "String (identifier)",
  "isAdmin": "Boolean",
  "isMfaCapable": "Boolean",
  "isMfaRegistered": "Boolean",
  "isPasswordlessCapable": "Boolean",
  "isSsprCapable": "Boolean",
  "isSsprEnabled": "Boolean",
  "isSsprRegistered": "Boolean",
  "isSystemPreferredAuthenticationMethodEnabled": "Boolean",
  "lastUpdatedDateTime": "String (timestamp)",
  "methodsRegistered": ["String"],
  "systemPreferredAuthenticationMethods": ["String"],
  "userDisplayName": "String",
  "userPreferredMethodForSecondaryAuthentication": "String",
  "userPrincipalName": "String",
  "userType": "String"
}
```
