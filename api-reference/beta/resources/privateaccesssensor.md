---
title: "privateAccessSensor resource type"
description: "A lightweight agent installed on domain controllers that helps secure access and enforce MFA to on-premise resources."
author: "shahzad-khalid"
ms.date: 06/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# privateAccessSensor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A lightweight agent installed on domain controllers that helps secure access and enforce MFA to on-premise resources. For more information, see [Configure Microsoft Entra Private Access for Active Directory domain controllers (preview)](/entra/global-secure-access/how-to-configure-domain-controllers).


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onpremisespublishingprofile-list-sensors.md)|[privateAccessSensor](../resources/privateaccesssensor.md) collection|Get a list of the privateAccessSensor objects and their properties.|
|[Get](../api/privateaccesssensor-get.md)|[privateAccessSensor](../resources/privateaccesssensor.md)|Read the properties and relationships of a privateAccessSensor object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalIp|String|External IP of sensor.|
|id|String|Unique ID of the sensor. Inherits from [entity](../resources/entity.md)|
|isAuditMode|Boolean|Not Implementated.|
|isBreakglassEnabled|Boolean|Not Implemented.|
|machineName|String|Machine name of sensor.|
|version|String|Version of sensor.|
|status|microsoft.graph.sensorStatus|The possible values are: `active`, `inactive`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privateAccessSensor",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateAccessSensor",
  "id": "String (identifier)",
  "machineName": "String",
  "externalIp": "String",
  "version": "String",
  "status": "String",
  "isBreakglassEnabled": "Boolean",
  "isAuditMode": "Boolean"
}
```



