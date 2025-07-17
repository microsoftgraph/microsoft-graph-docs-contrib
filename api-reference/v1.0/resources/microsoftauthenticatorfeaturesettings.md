---
title: "microsoftAuthenticatorFeatureSettings resource type"
description: "Represents Microsoft Authenticator settings such as application context and location context, and whether they're enabled for all users or specific users only."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# microsoftAuthenticatorFeatureSettings resource type

Namespace: microsoft.graph

Represents Microsoft Authenticator settings such as application context and location context, and whether they're enabled for all users or specific users only.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayAppInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user's Authenticator app shows them the client app they're signing into.|
|displayLocationInformationRequiredState|[authenticationMethodFeatureConfiguration](../resources/authenticationmethodfeatureconfiguration.md)|Determines whether the user's Authenticator app shows them the geographic location of where the authentication request originated from.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

