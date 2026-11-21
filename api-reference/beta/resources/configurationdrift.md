---
title: "configurationDrift resource type"
description: "Represents the information and properties of a configurationDrift object."
author: "swatyario"
ms.date: 01/19/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
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
|[Remediate](../api/configurationdrift-remediate.md)|[configurationDriftRemediationResult](../resources/configurationdriftremediationresult.md)|Restore the drifted properties to their desired baseline values.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baselineResourceDisplayName|String|Resource instance for which the drift is detected. <br><br>Supports `$filter` (`eq`, `ne`, `startsWith`) and `$orderby`.|
|driftedProperties|[driftedProperty](../resources/driftedproperty.md) collection|Properties within one or more resource instances in which drift is detected. <br><br>Requires `$select` to retrieve.|
|firstReportedDateTime|DateTimeOffset|The date and time at which drift is first detected. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br><br>Supports `$filter` (`eq`, `ne`, `ge`, `le`) and `$orderby`.|
|id|String|Globally unique identifier (GUID) of the drift. System-generated. Inherited from [entity](../resources/entity.md). <br><br>Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|monitorId|String|Globally unique identifier (GUID) of the monitor. System-generated. <br><br>Supports `$filter` (`eq`, `ne`).|
|resourceInstanceIdentifier|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|An identifier that allows users to understand exactly where the drift is. <br><br>Requires `$select` to retrieve.|
|resourceType|String|Resource for which the drift is detected. <br><br>Supports `$filter` (`eq`, `ne`, `startsWith`).|
|resourceVersion|Int32|The processing framework for the baseline resource. A missing value or `0` identifies a DSC-based resource; `1` identifies a V2-framework resource.|
|status|driftStatus|Status of the drift. The possible values are: `active`, `fixed`, `unknownFutureValue`. <br><br>Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the monitor runs. Fetched automatically by the system. <br><br>Supports `$filter` (`eq`, `ne`).|

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
  "resourceVersion": "Int32",
  "status": "String",
  "tenantId": "String"
}
```
