---
title: "deviceAndAppManagementPayloadAssignment resource type"
description: "Polymorphic base type for device and app management assignment containing assignment identifier, assignment source identification details, assignment target and assignment details."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementPayloadAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Polymorphic base type for device and app management assignment containing assignment identifier, assignment source identification details, assignment target and assignment details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementPayloadAssignments](../api/intune-apps-deviceandappmanagementpayloadassignment-list.md)|[deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) collection|List properties and relationships of the [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) objects.|
|[Get deviceAndAppManagementPayloadAssignment](../api/intune-apps-deviceandappmanagementpayloadassignment-get.md)|[deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md)|Read properties and relationships of the [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) object.|
|[Create deviceAndAppManagementPayloadAssignment](../api/intune-apps-deviceandappmanagementpayloadassignment-create.md)|[deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md)|Create a new [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) object.|
|[Delete deviceAndAppManagementPayloadAssignment](../api/intune-apps-deviceandappmanagementpayloadassignment-delete.md)|None|Deletes a [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md).|
|[Update deviceAndAppManagementPayloadAssignment](../api/intune-apps-deviceandappmanagementpayloadassignment-update.md)|[deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md)|Update the properties of a [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this assignment. Returned by default. This property is read-only.|
|payloadId|String|The unique identifier (Guid) for the payload associated with this assignment. Returned by default.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target group for this assignment. This value will be supplied on write operation only for direct/policy set assignments. This value will not be supplied on write operation for deployment assignments. However, it is populated when reading any assignment.|
|assignmentDetail|[deviceAndAppManagementAssignmentDetail](../resources/intune-shared-deviceandappmanagementassignmentdetail.md)|Type encapsulating additional properties for an assignment except for assignment target (group, assignment filter, identifier information).|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementPayloadAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementPayloadAssignment",
  "id": "String (identifier)",
  "payloadId": "String",
  "target": {
    "@odata.type": "microsoft.graph.allLicensedUsersAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String"
  },
  "assignmentDetail": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentDetail",
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
}
```