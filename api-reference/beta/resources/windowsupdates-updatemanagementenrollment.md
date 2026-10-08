---
title: "updateManagementEnrollment resource type"
description: "Represents per-category enrollment information for Windows Updates across supported update categories."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# updateManagementEnrollment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents per-category enrollment information for Windows Updates across supported update categories.

Inherits from [updatableAssetEnrollment](../resources/windowsupdates-updatableassetenrollment.md).
## Properties
|Property|Type|Description|
|:---|:---|:---|
|driver|[microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation](../resources/windowsupdates-updatecategoryenrollmentinformation.md)|Information about the enrollment state of the device in driver update management.|
|feature|[microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation](../resources/windowsupdates-updatecategoryenrollmentinformation.md)|Information about the enrollment state of the device in feature update management.|
|quality|[microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation](../resources/windowsupdates-updatecategoryenrollmentinformation.md)|Information about the enrollment state of the device in quality update management.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updateManagementEnrollment",
  "driver": {
    "@odata.type": "microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation"
  },
  "feature": {
    "@odata.type": "microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation"
  },
  "quality": {
    "@odata.type": "microsoft.graph.windowsUpdates.updateCategoryEnrollmentInformation"
  }
}
```
