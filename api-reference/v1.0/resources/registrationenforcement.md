---
title: "registrationEnforcement resource type"
description: "Enforce registration at sign-in time."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# registrationEnforcement resource type

Namespace: microsoft.graph

Enforce registration at sign-in time. This can currently only be used to remind users to set up targeted authentication methods (for example, Microsoft Authenticator) using the `authenticationMethodsRegistrationCampaign`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethodsRegistrationCampaign|[authenticationMethodsRegistrationCampaign](../resources/authenticationmethodsregistrationcampaign.md)|Run campaigns to remind users to set up targeted authentication methods.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
