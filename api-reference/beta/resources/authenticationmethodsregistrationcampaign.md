---
title: "authenticationMethodsRegistrationCampaign resource type"
description: "Settings to run campaigns to push users to setup targeted authentication methods."
author: "mjsantani"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationMethodsRegistrationCampaign resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Authentication Methods Registration Campaign provides a tool to admins to push users to setup targeted authentication methods. Users are nudged to setup the authentication method after they successfully complete a MFA challenge. This is currently scoped only to the Microsoft Authenticator app for MFA.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Users and groups of users that are excluded from being nudged to setup the authentication method.|
|includeTargets|[authenticationMethodsRegistrationCampaignIncludeTarget](../resources/authenticationmethodsregistrationcampaignincludetarget.md) collection|Users and groups of users that will be nudged to setup the authentication method.|
|snoozeDurationInDays|Int32|Defines after how many days the user will see the nudge again if the user taps on "Not now" and snoozes the prompt. Minimum 0 days. Maximum: 14 days. If value is “0” – User is nudged during every MFA attempt.|
|state|advancedConfigState|Setting used to enable/disable the feature. The "default" value currently maps to "disabled". Possible values are: `default`, `enabled`, `disabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationMethodsRegistrationCampaign"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsRegistrationCampaign",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "includeTargets": [
    {
      "@odata.type": "microsoft.graph.authenticationMethodsRegistrationCampaignIncludeTarget"
    }
  ],
  "snoozeDurationInDays": "Integer",
  "state": "String"
}
```

