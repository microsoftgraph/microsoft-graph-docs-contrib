---
title: "deviceAndAppManagementAssignmentDetails resource type"
description: "Represents the abstract base type for workload-specific assignment settings."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 11/05/2026
---

# deviceAndAppManagementAssignmentDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the abstract base type for workload-specific assignment settings.

Used by the **assignmentDetails** property of [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md). This type can't be instantiated directly. Use [mobileAppAssignmentDetails](../resources/intune-apps-mobileappassignmentdetails.md) for mobile app settings and specify the derived type with `@odata.type`. Configuration policy assignments don't require a derived settings type.

Replaces the deprecated [deviceAndAppManagementAssignmentDetail](../resources/intune-shared-deviceandappmanagementassignmentdetail.md) type.

## Methods

None.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentDetails"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignmentDetails"
}
```
