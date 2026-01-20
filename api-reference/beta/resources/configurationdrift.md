---
title: "configurationDrift resource type"
description: "Represents the information and properties of a configurationDrift object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationDrift resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationDrift](../resources/configurationdrift.md) object. This resource allows admins to get granular details about all active drifts across all existing monitors.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/configurationmanagement-list-configurationdrifts.md)|[configurationDrift](../resources/configurationdrift.md) collection|Get a list of the [configurationDrift](../resources/configurationdrift.md) objects and their properties.|
|[Get](../api/configurationdrift-get.md)|[configurationDrift](../resources/configurationdrift.md)|Get the properties and relationships of a [configurationDrift](../resources/configurationdrift.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baselineResourceDisplayName|String|Resource instance for which the drift is detected.|
|driftedProperties|[driftedProperty](../resources/driftedproperty.md) collection|Properties within one or more resource instances in which drift is detected.|
|firstReportedDateTime|DateTimeOffset|The date and time at which drift is first detected. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|Globally unique identifier (GUID) of the drift. System-generated. Inherited from [entity](../resources/entity.md).|
|monitorId|String|Globally unique identifier (GUID) of the monitor. System-generated.|
|resourceInstanceIdentifier|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|An identifier that allows users to understand exactly where the drift is.|
|resourceType|String|Resource for which the drift is detected.|
|status|driftStatus|Status of the drift. The possible values are: `active`, `fixed`, `unknownFutureValue`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the monitor runs. Fetched automatically by the system.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationDrift",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationDrift",
  "baselineResourceDisplayName": "String",
  "driftedProperties": [{"@odata.type": "microsoft.graph.driftedProperty"}],
  "firstReportedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "monitorId": "String",
  "resourceInstanceIdentifier": {"@odata.type": "microsoft.graph.openComplexDictionaryType"},
  "resourceType": "String",
  "status": "String",
  "tenantId": "String"
}
```
