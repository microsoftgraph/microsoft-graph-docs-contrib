---
title: "configurationMonitor resource type"
description: "Represents the information and properties of a configurationMonitor object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationMonitor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationMonitor](../resources/configurationmonitor.md) object. This resource allows administrators to create and manage monitors for tenant or drift monitoring across all workloads supported by unified tenant configuration management, enabling periodic detection of deviations from the desired configuration state.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md) collection|Get a list of the [configurationMonitor](../resources/configurationmonitor.md) objects and their properties.|
|[Create](../api/configurationmanagement-post-configurationmonitors.md)|[configurationMonitor](../resources/configurationmonitor.md)|Create a new [configurationMonitor](../resources/configurationmonitor.md) object that runs periodically in the background at a scheduled frequency.|
|[Get](../api/configurationmonitor-get.md)|[configurationMonitor](../resources/configurationmonitor.md)|Get the properties and relationships of a [configurationMonitor](../resources/configurationmonitor.md) object.|
|[Update](../api/configurationmonitor-update.md)|[configurationMonitor](../resources/configurationmonitor.md)|Update the properties of a [configurationMonitor](../resources/configurationmonitor.md) object, including the monitor name, description, and baseline.|
|[Delete](../api/configurationmonitor-delete.md)|None|Delete a [configurationMonitor](../resources/configurationmonitor.md) object permanently.|
|[Get configuration baseline](../api/configurationbaseline-get.md)|[configurationBaseline](../resources/configurationbaseline.md) collection|Read the properties and relationships of a [configurationBaseline](../resources/configurationbaseline.md) object that is attached to a specific monitor.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the monitor.|
|createdDateTime|DateTimeOffset|The date and time when the monitor was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|User-friendly description of the monitor given by the user.|
|displayName|String|User-friendly name given by the user to the monitor.|
|id|String|Globally unique identifier (GUID) for the monitor. System-generated. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the monitor was last modified. If no modifications are made to the monitor, it's the same as **createdDateTime**. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|mode|monitorMode|Monitor mode in which the monitor runs.  The possible values are: `monitorOnly`, `unknownFutureValue`. The default value is `monitorOnly`.|
|monitorRunFrequencyInHours|Int32|Frequency at which the monitor runs. The default frequency is six hours. Regardless of when you create or update a monitor, it gets triggered within the next 6 hours. Currently, monitors are picked up at fixed times: 6 AM, 12 PM, 6 PM, and 12 AM (all in GMT). For example, if you create a monitor at 9 AM, it gets triggered around 12 PM. If you update a monitor at 4 PM, it gets triggered around 6 PM.|
|parameters|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|Key-value pairs that contain parameter values which might be used in the baseline.|
|status|monitorStatus|Status of the monitor  The possible values are: `active`, `unknownFutureValue`. The default value is `active`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the monitor runs. Fetched automatically by the system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|baseline|[configurationBaseline](../resources/configurationbaseline.md)|A complex object that contains details of at least one resource and one property associated with the resource to be monitored.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationMonitor",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationMonitor",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "mode": "String",
  "monitorRunFrequencyInHours": "Int32",
  "parameters": {"@odata.type": "microsoft.graph.openComplexDictionaryType"},
  "status": "String",
  "tenantId": "String"
}
```
