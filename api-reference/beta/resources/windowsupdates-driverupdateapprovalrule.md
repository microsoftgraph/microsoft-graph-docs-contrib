---
title: "driverUpdateApprovalRule resource type"
description: "Represents an automatic approval rule for driver and firmware update content."
author: "arorariya"
ms.date: 09/21/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# driverUpdateApprovalRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an automatic approval rule for driver and firmware update content. The rule controls how long matching content is deferred before approval. The **approvalRules** property of a [driverUpdatePolicy](../resources/windowsupdates-driverupdatepolicy.md) resource can contain this type.

Inherits from [approvalRule](../resources/windowsupdates-approvalrule.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deferralInDays|Int32|The number of days to wait before matching driver and firmware update content is approved. Inherited from [approvalRule](../resources/windowsupdates-approvalrule.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.driverUpdateApprovalRule",
  "baseType": "microsoft.graph.windowsUpdates.approvalRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateApprovalRule",
  "deferralInDays": "Int32"
}
```
