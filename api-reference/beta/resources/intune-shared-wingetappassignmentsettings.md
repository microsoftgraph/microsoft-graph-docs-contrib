---
title: "winGetAppAssignmentSettings resource type"
description: "Contains properties used to assign a WinGet app to a group."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# winGetAppAssignmentSettings resource type

Namespace: microsoft.graph
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Contains properties used to assign a WinGet app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notifications|[winGetAppNotification](../resources/intune-shared-wingetappnotification.md)|The notification status for this app assignment. Possible values are: `showAll`, `showReboot`, `hideAll`, `unknownFutureValue`.|
|restartSettings|[winGetAppRestartSettings](../resources/intune-shared-wingetapprestartsettings.md)|The reboot settings to apply for this app assignment.|
|installTimeSettings|[winGetAppInstallTimeSettings](../resources/intune-shared-wingetappinstalltimesettings.md)|The install time settings to apply for this app assignment.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.winGetAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.winGetAppAssignmentSettings",
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
```
