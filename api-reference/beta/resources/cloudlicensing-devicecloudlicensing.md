---
title: "deviceCloudLicensing resource type"
description: "Represents the relationships of a device to cloud licensing resources."
author: "patrick-starrin"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-licensing"
doc_type: resourcePageType
---

# deviceCloudLicensing resource type

Namespace: microsoft.graph.cloudLicensing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the relationships of a [device](../resources/device.md) to cloud licensing resources.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[microsoft.graph.cloudLicensing.assignment](../resources/cloudlicensing-assignment.md) collection|The list of assignments that are directly assigned to this device.|
|usageRights|[microsoft.graph.cloudLicensing.usageRight](../resources/cloudlicensing-usageright.md) collection|The rights of the device to use various services, granted by the combination of its assigned licenses.|
|waitingMembers|[microsoft.graph.cloudLicensing.waitingMember](../resources/cloudlicensing-waitingmember.md) collection|List of over-assigned devices that are in the waiting room for an allotment due to license capacity limits.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudLicensing.deviceCloudLicensing"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudLicensing.deviceCloudLicensing"
}
```
