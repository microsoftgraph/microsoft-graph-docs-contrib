---
title: "mobileAppAssignmentDetail resource type"
description: "Represents the deprecated mobile app assignment settings type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
toc.title: "mobileAppAssignmentDetail resource type (deprecated)"
ROBOTS: NOINDEX
---

# mobileAppAssignmentDetail resource type (deprecated)

Namespace: microsoft.graph

> [!CAUTION]
> This type is deprecated. Use [mobileAppAssignmentDetails](../resources/intune-apps-mobileappassignmentdetails.md) instead. Removal from beta was scheduled for July 31, 2026. This topic retains the legacy definition for migration guidance.

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the deprecated mobile app assignment settings type.

Inherits from [deviceAndAppManagementAssignmentDetail](../resources/intune-shared-deviceandappmanagementassignmentdetail.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|intent|[mobileAppEnforcementIntentType](../resources/intune-apps-mobileappenforcementintenttype.md)|The app enforcement intent. The default value is `requiredInstall`. The possible values are: `requiredInstall`, `requiredUninstall`, `available`, `availableWithoutEnrollment`, `unknownFutureValue`.|
|settings|[mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)|The app-type-specific assignment settings.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppAssignmentDetail"
} -->
```json
{
  "@odata.type": "#microsoft.graph.mobileAppAssignmentDetail",
  "intent": "String",
  "settings": {
    "@odata.type": "microsoft.graph.mobileAppAssignmentSettings"
  }
}
```
