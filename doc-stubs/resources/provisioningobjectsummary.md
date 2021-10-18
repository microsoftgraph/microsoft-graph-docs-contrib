---
title: "provisioningObjectSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# provisioningObjectSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List provisioningObjectSummaries](../api/provisioningobjectsummary-list.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md) collection|Get a list of the [provisioningObjectSummary](../resources/provisioningobjectsummary.md) objects and their properties.|
|[Create provisioningObjectSummary](../api/auditlogroot-post-directoryprovisioning.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md)|Create a new [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object.|
|[Get provisioningObjectSummary](../api/provisioningobjectsummary-get.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md)|Read the properties and relationships of a [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object.|
|[Update provisioningObjectSummary](../api/provisioningobjectsummary-update.md)|[provisioningObjectSummary](../resources/provisioningobjectsummary.md)|Update the properties of a [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object.|
|[Delete provisioningObjectSummary](../api/provisioningobjectsummary-delete.md)|None|Deletes a [provisioningObjectSummary](../resources/provisioningobjectsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|**TODO: Add Description**|
|activityDateTime|DateTimeOffset|**TODO: Add Description**|
|changeId|String|**TODO: Add Description**|
|cycleId|String|**TODO: Add Description**|
|durationInMilliseconds|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|initiatedBy|[initiator](../resources/initiator.md)|**TODO: Add Description**|
|jobId|String|**TODO: Add Description**|
|modifiedProperties|[modifiedProperty](../resources/modifiedproperty.md) collection|**TODO: Add Description**|
|provisioningAction|provisioningAction|**TODO: Add Description**. The possible values are: `other`, `create`, `delete`, `disable`, `update`, `stagedDelete`, `unknownFutureValue`.|
|provisioningStatusInfo|[provisioningStatusInfo](../resources/provisioningstatusinfo.md)|**TODO: Add Description**|
|provisioningSteps|[provisioningStep](../resources/provisioningstep.md) collection|**TODO: Add Description**|
|servicePrincipal|[provisioningServicePrincipal](../resources/provisioningserviceprincipal.md)|**TODO: Add Description**|
|sourceIdentity|[provisionedIdentity](../resources/provisionedidentity.md)|**TODO: Add Description**|
|sourceSystem|[provisioningSystem](../resources/provisioningsystem.md)|**TODO: Add Description**|
|statusInfo|[statusBase](../resources/statusbase.md)|**TODO: Add Description**|
|targetIdentity|[provisionedIdentity](../resources/provisionedidentity.md)|**TODO: Add Description**|
|targetSystem|[provisioningSystem](../resources/provisioningsystem.md)|**TODO: Add Description**|
|tenantId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.provisioningObjectSummary",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.provisioningObjectSummary",
  "id": "String (identifier)",
  "activityDateTime": "String (timestamp)",
  "tenantId": "String",
  "jobId": "String",
  "cycleId": "String",
  "changeId": "String",
  "action": "String",
  "provisioningAction": "String",
  "durationInMilliseconds": "Integer",
  "servicePrincipal": {
    "@odata.type": "microsoft.graph.provisioningServicePrincipal"
  },
  "initiatedBy": {
    "@odata.type": "microsoft.graph.initiator"
  },
  "sourceSystem": {
    "@odata.type": "microsoft.graph.provisioningSystem"
  },
  "targetSystem": {
    "@odata.type": "microsoft.graph.provisioningSystem"
  },
  "sourceIdentity": {
    "@odata.type": "microsoft.graph.provisionedIdentity"
  },
  "targetIdentity": {
    "@odata.type": "microsoft.graph.provisionedIdentity"
  },
  "statusInfo": {
    "@odata.type": "microsoft.graph.statusBase"
  },
  "provisioningStatusInfo": {
    "@odata.type": "microsoft.graph.provisioningStatusInfo"
  },
  "provisioningSteps": [
    {
      "@odata.type": "microsoft.graph.provisioningStep"
    }
  ],
  "modifiedProperties": [
    {
      "@odata.type": "microsoft.graph.modifiedProperty"
    }
  ]
}
```

