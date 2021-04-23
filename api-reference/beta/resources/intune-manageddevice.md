---
title: "managedDevice resource type"
description: "Cloud PCs are enrolled into Intune allowing IT admin to manage these devices through the MEM portal and APIs.  This API enables IT admin to reprovision a cloud PC extending the managedDevice entity."
author: "Rui Hou"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# managedDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cloud PCs are enrolled into Intune allowing IT admin to manage these devices through the MEM portal and APIs.  This API enables IT admin to reprovision a cloud PC extending the managedDevice entity.

Inherits from entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[reprovisionCloudPc of managedDevice](../api/intune-manageddevice-reprovisioncloudpc.md)|None|Reprovision a Cloud PC with Intune managed device id in [managedDevice](../resource/intune-manageddevice.md).|
|[getCloudPcRemoteActionResults](../api/intune-manageddevice-getcloudpcremoteactionresults.md)|[cloudPcRemoteActionResult](../resources/cloudpcremoteactionresult.md)|Check the results of reprovisioning a Cloud PC.|

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




