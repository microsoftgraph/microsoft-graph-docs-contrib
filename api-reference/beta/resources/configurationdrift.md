---
title: "configurationDrift resource type"
description: "Represents the information and properties of a configurationDrift object."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
doc_type: resourcePageType
---

# configurationDrift resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the information and properties of a [configurationDrift](../resources/configurationdrift.md) object. This resource allows admins to get granular details about all active drifts across all existing monitors.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/configurationdrift-get.md)|[configurationDrift](../resources/configurationdrift.md)|Get all active drifts against all existing monitors.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baselineResourceDisplayName|String|Resource instance for which the drift is detected.|
|driftedProperties|[driftedProperty](../resources/driftedproperty.md) collection|Properties within one or more resource instances where the drift is detected.|
|firstReportedDateTime|DateTimeOffset|Date and time at which the drift is first detected.|
|id|String|Globally unique identifier / GUID of the drift Created by the system Inherits from [entity](../resources/entity.md).|
|monitorId|String|Globally unique identifier / GUID of the monitor [Created by the system].|
|resourceInstanceIdentifier|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|An identifier that allow users to understand where the drift exactly is.|
|resourceType|String|Resource for which the drift is detected.|
|status|driftStatus|Status of the drift. The possible values as of now are: `active` and `fixed`.|
|tenantId|String|Globally unique identifier / GUID of the tenant for which the monitor is being run [Fetched automatically by the system].|

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
