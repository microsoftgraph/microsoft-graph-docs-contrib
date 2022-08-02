---
title: "microsoftAuthenticatorFeatureSettings resource type"
description: "Represents Microsoft Authenticator settings such as number matching and location context, and whether they are enabled for all users or specific users only."
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
|numberMatchingRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Specifies whether the number entered into the client app must match the number presented on the Authenticator app. Value is ignored for phone sign-in notifications.|
|displayAppInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user's Authenticator app will show them the client app they are signing into.|
|displayLocationInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user's Authenticator app will show them the geographic location of where the authentication request originated from.|

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

