---
title: "deviceQueryResult resource type"
description: "Results of Intune Pivot device queries ran for this device."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceQueryResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Results of Intune Pivot device queries ran for this device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceQueryResults](../api/intune-devices-devicequeryresult-list.md)|[deviceQueryResult](../resources/intune-devices-devicequeryresult.md) collection|List properties and relationships of the [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) objects.|
|[Get deviceQueryResult](../api/intune-devices-devicequeryresult-get.md)|[deviceQueryResult](../resources/intune-devices-devicequeryresult.md)|Read properties and relationships of the [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) object.|
|[Create deviceQueryResult](../api/intune-devices-devicequeryresult-create.md)|[deviceQueryResult](../resources/intune-devices-devicequeryresult.md)|Create a new [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) object.|
|[Delete deviceQueryResult](../api/intune-devices-devicequeryresult-delete.md)|None|Deletes a [deviceQueryResult](../resources/intune-devices-devicequeryresult.md).|
|[Update deviceQueryResult](../api/intune-devices-devicequeryresult-update.md)|[deviceQueryResult](../resources/intune-devices-devicequeryresult.md)|Update the properties of a [deviceQueryResult](../resources/intune-devices-devicequeryresult.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (ID) of an Intune Pivot device query.|
|status|[deviceQueryResultStatus](../resources/intune-devices-devicequeryresultstatus.md)|Indicates present status of an Intune Pivot device query. This property is read-only. Possible values are: `created`, `notified`, `pending`, `timedOut`, `internalServiceError`, `successful`, `failed`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|Indicates creation time of an Intune Pivot device query. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Last update time of an Intune Pivot device query. This property is read-only.|
|returnCode|Int32|Returned error code captured by an Intune Pivot device query. Valid values -2147483648 to 2147483647. This property is read-only.|
|errorMessage|String|Returned error message captured by an Intune Pivot device query. This property is read-only.|
|results|String|Results of Intune Pivot device query. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceQueryResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceQueryResult",
  "id": "String (identifier)",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "returnCode": 1024,
  "errorMessage": "String",
  "results": "String"
}
```
