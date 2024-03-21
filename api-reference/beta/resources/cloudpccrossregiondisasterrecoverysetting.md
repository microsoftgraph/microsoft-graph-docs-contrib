---
title: "cloudPcCrossRegionDisasterRecoverySetting resource type"
description: "Describes the settings of cross region disaster recovery."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcCrossRegionDisasterRecoverySetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings of cross region disaster recovery.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|crossRegionDisasterRecoveryEnabled|Edm.Boolean|True if an end-user is allowed to set up Cloud PC cross region disaster recovery functionality, false if an end-user is not allowed to. Default value is false.|
|maintainCrossRegionRestorePointEnabled|Edm.Boolean|Indicates whether Windows 365 maintain the cross region disaster recovery function generated restore points. When true, means the Windows 365 stored restore points. When false, Windows 365 don't generate or keep restore point from original Cloud PC. In the event of a disaster, the new Cloud PC can only be provisioned using the initial image, which would result in the loss of some user data on the original Cloud PC. The default value is false.|
|disasterRecoveryNetworkSetting|microsoft.graph.cloudPcDisasterRecoveryNetworkSetting|Indicates the Cloud PC's network setting while performing cross region disaster recovery operation.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcCrossRegionDisasterRecoverySetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRestorePointSetting",
  "crossRegionDisasterRecoveryEnabled": "Boolean",
  "maintainCrossRegionRestorePointEnabled": "Boolean",
  "disasterRecoveryNetworkSetting": {
    "@odata.type": "microsoft.graph.cloudPcDisasterRecoveryNetworkSetting"
  }
}
```
