---
title: "microsoftAuthenticatorFeatureSettings resource type"
description: "Represents Microsoft Authenticator settings such as number matching and location context, and whether they're enabled for all users or specific users only."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorFeatureSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Microsoft Authenticator settings such as number matching and location context, and whether they're enabled for all users or specific users only.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|companionAppAllowedState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether users are able to approve push notifications on other Microsoft applications such as Outlook Mobile.|
|displayAppInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user's Authenticator app shows them the client app they're signing into.|
|displayLocationInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user's Authenticator app shows them the geographic location of where the authentication request originated from.|
|numberMatchingRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Specifies whether the user needs to enter a number in the Authenticator app from the login screen to complete their login. Value is ignored for phone sign-in notifications.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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

