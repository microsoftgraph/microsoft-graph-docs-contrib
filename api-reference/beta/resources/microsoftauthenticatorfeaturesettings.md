---
title: "microsoftAuthenticatorFeatureSettings resource type"
description: "A collection that defines Microsoft Authenticator features and allows configuration of enablement state and targeted included and excluded groups."
author: "mjsantani"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorFeatureSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection that defines Microsoft Authenticator features and allows configuration of enablement state and targeted included and excluded groups.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|numberMatchingRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Requires number matching for MFA notifications. Value is ignored for phone sign-in notifications.|
|displayAppInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user is shown application context in their Authenticator app notification. In the body of the Authenticator notification, the user will be shown the app they are signing into.|
|displayLocationInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user is shown geographic location context in their Authenticator app notification. In the body of the Authenticator notification, the user will be shown the location that the authentication request originated from.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorFeatureSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorFeatureSettings",
  "companionAppAllowedState": {
    "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
  },
  "numberMatchingRequiredState": {
    "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
  },
  "displayAppInformationRequiredState": {
    "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
  },
  "displayLocationInformationRequiredState": {
    "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
  }
}
```

