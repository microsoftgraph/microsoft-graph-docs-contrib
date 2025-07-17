---
title: "outOfBoxExperienceSetting resource type"
description: "The Windows Autopilot Deployment Profile settings used by the device for the out-of-box experience. Supports: $select, $top, $skip. $Search, $orderBy and $filter are not supported."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# outOfBoxExperienceSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Windows Autopilot Deployment Profile settings used by the device for the out-of-box experience. Supports: $select, $top, $skip. $Search, $orderBy and $filter are not supported.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|privacySettingsHidden|Boolean|When TRUE, privacy settings is hidden to the end user during OOBE. When FALSE, privacy settings is shown to the end user during OOBE. Default value is FALSE.|
|eulaHidden|Boolean|When TRUE, EULA is hidden to the end user during OOBE. When FALSE, EULA is shown to the end user during OOBE. Default value is FALSE.|
|userType|[windowsUserType](../resources/intune-enrollment-windowsusertype.md)|The type of user. Possible values are administrator and standard. Default value is administrator. Yes No
. Possible values are: `administrator`, `standard`, `unknownFutureValue`.|
|deviceUsageType|[windowsDeviceUsageType](../resources/intune-enrollment-windowsdeviceusagetype.md)|The Entra join authentication type. Possible values are singleUser and shared. The default is singleUser. Possible values are: `singleUser`, `shared`, `unknownFutureValue`.|
|keyboardSelectionPageSkipped|Boolean|When TRUE, the keyboard selection page is hidden to the end user during OOBE if Language and Region are set. When FALSE, the keyboard selection page is skipped during OOBE.|
|escapeLinkHidden|Boolean|When TRUE, the link that allows user to start over with a different account on company sign-in is hidden. When false, the link that allows user to start over with a different account on company sign-in is available. Default value is FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.outOfBoxExperienceSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.outOfBoxExperienceSetting",
  "privacySettingsHidden": true,
  "eulaHidden": true,
  "userType": "String",
  "deviceUsageType": "String",
  "keyboardSelectionPageSkipped": true,
  "escapeLinkHidden": true
}
```