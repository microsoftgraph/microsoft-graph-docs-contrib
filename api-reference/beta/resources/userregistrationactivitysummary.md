---
title: "userRegistrationActivitySummary resource type"
description: "Represents the summary of the number of successful/unsuccessful registration and reset events for each authentication method."
ms.date: 07/23/2025
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.custom: sfi-ga-nochange
---

# userRegistrationActivitySummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of the number of successful/unsuccessful registration and reset events for each authentication method.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationmethodsroot-userregistrationactivity.md)|[userRegistrationActivitySummary](../resources/userregistrationactivitysummary.md) collection|Get the summary of the number of successful/unsuccessful registration and reset events for each authentication method.|

## Properties
|Property|Type|Description| 
|:---|:---|:---|
|authMethod|usageAuthMethod|The authentication method for the given summary. The possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobileCall`, `fido`, `appPassword`, `unknownFutureValue`, `externalAuthMethod`, `hardwareOneTimePasscode`, `windowsHelloForBusiness`, `microsoftAuthenticatorPasswordless`, `temporaryAccessPass`, `macOsSecureEnclaveKey`, `passKeyDeviceBound`, `passKeyDeviceBoundAuthenticator`, `passKeyDeviceBoundWindowsHello`, `softwareOneTimePasscode`, `microsoftAuthenticatorPush`, `mobilePhone`, `sms`, `alternateMobilePhone`, `fido2SecurityKey`, `oneTimePasscode`, `passKeySynced`, `qrCode`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `externalAuthMethod` , `hardwareOneTimePasscode` , `windowsHelloForBusiness` , `microsoftAuthenticatorPasswordless` , `temporaryAccessPass` , `macOsSecureEnclaveKey` , `passKeyDeviceBound` , `passKeyDeviceBoundAuthenticator` , `passKeyDeviceBoundWindowsHello` , `softwareOneTimePasscode` , `microsoftAuthenticatorPush` , `mobilePhone` , `sms` , `alternateMobilePhone` , `fido2SecurityKey` , `oneTimePasscode` , `passKeySynced`, `qrCode`. Supports `$filter` (`eq`).|
|failureActivityCount|Int64|The total number of failed activities for the corresponding authMethod and feature. Supports `$filter` (`eq`).|
|feature|featureType|The type of activity. The possible values are: `registration`, `reset`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|id|String|The unique id for the given summary. Supports `$filter` (`eq`).|
|successfulActivityCount|Int64|The total number of successful activities for the corresponding authMethod and feature. Supports `$filter` (`gt`, `lt`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userRegistrationActivitySummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationActivitySummary",
  "id": "String (identifier)",
  "feature": "String",
  "successfulActivityCount": "Integer",
  "failureActivityCount": "Integer",
  "authMethod": "String"
}
```

