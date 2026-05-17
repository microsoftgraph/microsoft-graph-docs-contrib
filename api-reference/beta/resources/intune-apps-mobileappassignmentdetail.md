---
title: "mobileAppAssignmentDetail resource type"
description: "Type capturing mobile app specific assignment details/properties excluding assignment source and target details."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileAppAssignmentDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type capturing mobile app specific assignment details/properties excluding assignment source and target details.


Inherits from [deviceAndAppManagementAssignmentDetail](../resources/intune-shared-deviceandappmanagementassignmentdetail.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|intent|[mobileAppEnforcementIntentType](../resources/intune-apps-mobileappenforcementintenttype.md)|Indicates the enforcement intent for the mobile app assignment. Possible values are: `requiredInstall`, `requiredUninstall`, `available`, and `availableWithoutEnrollment`. The default value is `requiredInstall`. Possible values are: `requiredInstall`, `requiredUninstall`, `available`, `availableWithoutEnrollment`, `unknownFutureValue`.|
|settings|[mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)|Indicates the app-type-specific settings properties contained within the assignment as a polymorphic type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppAssignmentDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppAssignmentDetail",
  "intent": "String",
  "settings": {
    "@odata.type": "microsoft.graph.winGetAppAssignmentSettings",
    "notifications": "String",
    "restartSettings": {
      "@odata.type": "microsoft.graph.winGetAppRestartSettings",
      "gracePeriodInMinutes": 1024,
      "countdownDisplayBeforeRestartInMinutes": 1024,
      "restartNotificationSnoozeDurationInMinutes": 1024
    },
    "installTimeSettings": {
      "@odata.type": "microsoft.graph.winGetAppInstallTimeSettings",
      "useLocalTime": true,
      "deadlineDateTime": "String (timestamp)"
    }
  }
}
```