---
title: "mobileAppAssignment resource type"
description: "A class containing the properties used for Group Assignment of a Mobile App."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileAppAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for Group Assignment of a Mobile App.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppAssignments](../api/intune-apps-mobileappassignment-list.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|List properties and relationships of the [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) objects.|
|[Get mobileAppAssignment](../api/intune-apps-mobileappassignment-get.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md)|Read properties and relationships of the [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.|
|[Create mobileAppAssignment](../api/intune-apps-mobileappassignment-create.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md)|Create a new [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.|
|[Delete mobileAppAssignment](../api/intune-apps-mobileappassignment-delete.md)|None|Deletes a [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md).|
|[Update mobileAppAssignment](../api/intune-apps-mobileappassignment-update.md)|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md)|Update the properties of a [mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This property is read-only.|
|intent|[installIntent](../resources/intune-shared-installintent.md)|The install intent defined by the admin. Possible values are: `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target group assignment defined by the admin.|
|settings|[mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)|The settings for target assignment defined by the admin.|
|source|[deviceAndAppManagementAssignmentSource](../resources/intune-shared-deviceandappmanagementassignmentsource.md)|The resource type which is the source for the assignment. This property is read-only. Possible values are: `direct`, `policySets`.|
|sourceId|String|The identifier of the source of the assignment. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppAssignment",
  "id": "String (identifier)",
  "intent": "String",
  "target": {
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String"
  },
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
  },
  "source": "String",
  "sourceId": "String"
}
```