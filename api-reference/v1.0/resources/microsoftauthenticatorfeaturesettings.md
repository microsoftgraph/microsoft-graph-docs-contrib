---
title: "microsoftAuthenticatorFeatureSettings resource type"
description: "Represents Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only."
author: "mjsantani"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorFeatureSettings resource type

Namespace: microsoft.graph

Represents Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only.

## Properties
|Property|Type|Description|
|:---|:---|:---|
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
  "displayAppInformationRequiredState": {
    "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
  },
  "displayLocationInformationRequiredState": {
    "@odata.type": "microsoft.graph.authenticationMethodFeatureConfiguration"
  }
}
```

