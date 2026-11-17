---
title: "configurationDriftRemediationResult resource type"
description: "Represents the outcome of an attempt to remediate a configuration drift."
author: "Anusree-stack"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
doc_type: resourcePageType
---

# configurationDriftRemediationResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the outcome of an attempt to remediate a configuration drift.

Returned by the [remediate](../api/configurationdrift-remediate.md) action on a [configurationDrift](../resources/configurationdrift.md). Check **status** to determine whether remediation succeeded or failed. The current preview doesn't return partial results.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|baselineResourceDisplayName|String|The display name of the baseline resource associated with the drift.|
|configurationDriftId|String|The identifier of the configuration drift on which remediation was invoked.|
|remediatedProperties|[configurationDriftRemediatedProperty](../resources/configurationdriftremediatedproperty.md) collection|The drifted properties that were successfully restored to their desired values.|
|remediationFailedProperties|[driftedProperty](../resources/driftedproperty.md) collection|The drifted properties that couldn't be restored to their desired values.|
|resourceInstanceIdentifier|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|The identifier of the resource instance that was remediated.|
|resourceType|String|The type of resource that was remediated.|
|status|configurationDriftRemediationStatus|The overall outcome. The possible values are: `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`. The current preview returns `succeeded` or `failed`, not `partiallySucceeded`.|
|tenantId|String|Globally unique identifier (GUID) of the tenant for which the monitor runs.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationDriftRemediationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationDriftRemediationResult",
  "configurationDriftId": "String",
  "tenantId": "String",
  "status": "String",
  "resourceType": "String",
  "baselineResourceDisplayName": "String",
  "resourceInstanceIdentifier": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  },
  "remediatedProperties": [
    {
      "@odata.type": "microsoft.graph.configurationDriftRemediatedProperty"
    }
  ],
  "remediationFailedProperties": [
    {
      "@odata.type": "microsoft.graph.driftedProperty"
    }
  ]
}
```
