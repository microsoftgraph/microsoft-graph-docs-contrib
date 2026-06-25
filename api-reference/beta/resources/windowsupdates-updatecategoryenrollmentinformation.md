---
title: "updateCategoryEnrollmentInformation resource type"
description: "Represents information about the enrollment of a device into management by the service of a certain update category."
author: "angiechen22"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: resourcePageType
ms.date: 06/21/2026
---

# updateCategoryEnrollmentInformation resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about the enrollment of a device into management by the service of a certain update category.

> [!NOTE]
> For devices enrolled in feature update management, the `enrolledWithPolicy` state means that the device is enrolled in feature update management and is assigned to a policy. The `enrolled` state indicates that the device is enrolled in feature update management but isn't assigned to a policy, and it doesn't receive feature updates.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|enrollmentState|microsoft.graph.windowsUpdates.enrollmentState|Represents the last known enrollment state of the device. Possible values are: `notEnrolled`, `enrolled`, `enrolledWithPolicy`, `enrolling`, `unenrolling`, `unknownFutureValue`. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the **enrollmentState** was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation",
  "enrollmentState": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```
