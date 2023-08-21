---
title: "signInPreferences resource type"
description: "Represents settings and preferences for the sign-in experience of a user."
author: "msft-poulomi"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# signInPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings and preferences for the sign-in experience of a user.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isSystemPreferredAuthenticationMethodEnabled|Boolean|Indicates whether the credential preferences of the system are enabled.|
|userPreferredMethodForSecondaryAuthentication|userDefaultAuthenticationMethodType|The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, and `unknownFutureValue`|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
