---
title: "signInPreferences resource type"
description: "Represents settings and preferences for the sign-in experience of a user. Currently, only system-preferred MFA settings are available. "
author: "msft-poulomi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/17/2024
---

# signInPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings and preferences for the sign-in experience of a user. Currently, only system-preferred MFA settings are available. For more information, see [System-preferred multifactor authentication](/entra/identity/authentication/concept-system-preferred-multifactor-authentication).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isSystemPreferredAuthenticationMethodEnabled|Boolean|Indicates whether the credential preferences of the system are enabled.|
|userPreferredMethodForSecondaryAuthentication|userDefaultAuthenticationMethodType|The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, and `unknownFutureValue`|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.signInPreferences"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInPreferences",
  "isSystemPreferredAuthenticationMethodEnabled": "Boolean",
  "userPreferredMethodForSecondaryAuthentication": "String"
}
```
