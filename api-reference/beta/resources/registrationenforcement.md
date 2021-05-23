---
title: "registrationEnforcement resource type"
description: "Settings for enforcing registration at sign-in time."
author: "mjsantani"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# registrationEnforcement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The settings available for enforcing registration at sign-in time. This can currently only be used to push users to set up targeted authentication methods (Microsoft Authenticator) using the 'authenticationMethodsRegistrationCampaign`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethodsRegistrationCampaign|[authenticationMethodsRegistrationCampaign](../resources/authenticationmethodsregistrationcampaign.md)|Settings to run campaigns to push users to setup targeted authentication methods.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.registrationEnforcement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.registrationEnforcement",
  "authenticationMethodsRegistrationCampaign": {
    "@odata.type": "microsoft.graph.authenticationMethodsRegistrationCampaign"
  }
}
```

