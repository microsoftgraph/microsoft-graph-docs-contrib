---
title: "managedDevice resource type"
description: "Cloud PCs are enrolled into Intune allowing IT admin to manage these devices through the MEM portal and APIs. So cloud PC extends managedDevice resource from Intune to allow some operations on it."
author: "RuiHou105"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# managedDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cloud PCs are enrolled into Intune allowing IT admin to manage these devices through the MEM portal and APIs. So cloud PC extends managedDevice resource from Intune to allow some operations on it.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[reprovisionCloudPc of managedDevice](../api/intune-manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with Intune managed device id in [managedDevice](../resources/intune-manageddevice.md).|
|[bulkReprovisionCloudPc of managedDevice](../api/intune-manageddevice-bulkreprovisioncloudpc.md)|None|Bulk reprovision a set of Cloud PC devices with Intune managed device IDs in [managedDevice](../resources/intune-manageddevice.md).|
|[resizeCloudPc of managedDevice](../api/intune-manageddevice-resizecloudpc.md)|None|Upgrade or downgrade an existing CloudPC to another configuration with new vCPU and storage size through Intune managed device id in [managedDevice](../resources/intune-manageddevice.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the Intune managed device.|
|cloudPcRemoteActionResults|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|The remote action results.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDevice",
  "id": "String (identifier)",
  "cloudPcRemoteActionResults": [
      {
        "@odata.type": "microsoft.graph.cloudPcRemoteActionResult",
      }
  ]
}
```




