---
title: "outOfBoxExperienceSettings resource type"
description: "The Windows Autopilot Deployment Profile settings used by the Autopilot device for out-of-box experience. Supports: $select, $top, $skip. $Search, $orderBy and $filter are not supported. Read-Only. Starting from May 2024 this property will no longer be supported and will be marked as deprecated. Use outOfBoxExperienceSetting instead."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# outOfBoxExperienceSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Windows Autopilot Deployment Profile settings used by the Autopilot device for out-of-box experience. Supports: $select, $top, $skip. $Search, $orderBy and $filter are not supported. Read-Only. Starting from May 2024 this property will no longer be supported and will be marked as deprecated. Use outOfBoxExperienceSetting instead.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|hidePrivacySettings|Boolean|Show or hide privacy settings to user|
|hideEULA|Boolean|Show or hide EULA to user|
|userType|[windowsUserType](../resources/intune-enrollment-windowsusertype.md)|Type of user. Possible values are: `administrator`, `standard`, `unknownFutureValue`.|
|deviceUsageType|[windowsDeviceUsageType](../resources/intune-enrollment-windowsdeviceusagetype.md)|AAD join authentication type. Possible values are: `singleUser`, `shared`, `unknownFutureValue`.|
|skipKeyboardSelectionPage|Boolean|If set, then skip the keyboard selection page if Language and Region are set|
|hideEscapeLink|Boolean|If set to true, then the user can't start over with different account, on company sign-in|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.outOfBoxExperienceSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.outOfBoxExperienceSettings",
  "hidePrivacySettings": true,
  "hideEULA": true,
  "userType": "String",
  "deviceUsageType": "String",
  "skipKeyboardSelectionPage": true,
  "hideEscapeLink": true
}
```