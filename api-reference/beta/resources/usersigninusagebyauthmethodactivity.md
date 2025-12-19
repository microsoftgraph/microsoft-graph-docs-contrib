---
title: "userSignInUsageByAuthMethodActivity resource type"
description: "Represents the summary of the number of successful sign-ins for each authentication method enabled on the tenant."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.custom: sfi-ga-nochange
---

# userSignInUsageByAuthMethodActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of the number of successful sign-ins for each authentication method enabled on the tenant.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethodsroot-usersigninsbyauthmethodsummary.md)|[userSignInUsageByAuthMethodActivity](../resources/usersigninusagebyauthmethodactivity.md) collection|Get the number of successful sign ins for each authentication method.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMethod|String|The authentication method for the given summary. The possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobileCall`, `fido`, `appPassword`, `unknownFutureValue`, `externalAuthMethod`, `hardwareOneTimePasscode`, `windowsHelloForBusiness`, `microsoftAuthenticatorPasswordless`, `temporaryAccessPass`, `macOsSecureEnclaveKey`, `passKeyDeviceBound`, `passKeyDeviceBoundAuthenticator`, `passKeyDeviceBoundWindowsHello`, `softwareOneTimePasscode`, `microsoftAuthenticatorPush`, `mobilePhone`, `sms`, `alternateMobilePhone`, `fido2SecurityKey`, `oneTimePasscode`, `passKeySynced`, `qrCode`. |
|successActivityCount|Int64|The total number of successful sign in events for the given authentication method.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "authenticationMethod",
  "@odata.type": "microsoft.graph.userSignInUsageByAuthMethodActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSignInUsageByAuthMethodActivity",
  "authenticationMethod": "String (identifier)",
  "successActivityCount": "Int64"
}
```

