---
title: "deviceAndAppManagementPayloadAssignment resource type"
description: "Represents the base type for device and app management payload assignments."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementPayloadAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the base type for device and app management payload assignments.

Exposed through the **targetAssignments** relationship of a mobile app or a device management configuration policy, not through a standalone entity set. The collection can contain base and derived instances, differentiated by `@odata.type`. The currently supported deployment assignment type is [deviceAndAppManagementDeploymentAssignment](../resources/intune-apps-deviceandappmanagementdeploymentassignment.md).

Use the workload's **configureAssignments** action to configure all assignments for one deployment in a single request. Individual assignment CRUD operations aren't supported.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/intune-apps-deviceandappmanagementpayloadassignment-list.md)|[deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) collection|List deployment assignments for a mobile app or configuration policy.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignmentDetails|[deviceAndAppManagementAssignmentDetails](../resources/intune-shared-deviceandappmanagementassignmentdetails.md)|The workload-specific assignment settings, excluding target and identifier information. Use [mobileAppAssignmentDetails](../resources/intune-apps-mobileappassignmentdetails.md) for mobile app assignments. Omit for workloads that don't require additional settings.|
|id|String|The unique assignment identifier. Its format varies by workload. Returned by default. Read-only.|
|payloadId|String|The unique identifier of the associated payload. Returned by default.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The group target and optional assignment filter. Populated when assignments are read. Don't supply this property when configuring deployment assignments; the deployment defines the target.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementPayloadAssignment"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementPayloadAssignment",
  "id": "String",
  "payloadId": "String",
  "target": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
  },
  "assignmentDetails": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentDetails"
  }
}
```
