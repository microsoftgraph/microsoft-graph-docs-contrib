---
title: "mobileAppAssignmentDetails resource type"
description: "Represents mobile app settings for a payload assignment."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 11/05/2026
---

# mobileAppAssignmentDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents mobile app settings for a payload assignment.

Inherits from [deviceAndAppManagementAssignmentDetails](../resources/intune-shared-deviceandappmanagementassignmentdetails.md). Used by the **assignmentDetails** property of [deviceAndAppManagementPayloadAssignment](../resources/intune-apps-deviceandappmanagementpayloadassignment.md) for mobile apps. Replaces the deprecated [mobileAppAssignmentDetail](../resources/intune-apps-mobileappassignmentdetail.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|intent|[mobileAppEnforcementIntentType](../resources/intune-apps-mobileappenforcementintenttype.md)|The app enforcement intent. The default value is `requiredInstall`. The possible values are: `requiredInstall`, `requiredUninstall`, `available`, `availableWithoutEnrollment`, `unknownFutureValue`. Deployment assignments currently support only `requiredInstall`.|
|settings|[mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)|The app-type-specific assignment settings, represented by a derived type of [mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppAssignmentDetails"
} -->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppAssignmentDetails",
  "intent": "String",
  "settings": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentSettings"
  }
}
```
