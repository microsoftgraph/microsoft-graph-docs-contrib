---
title: "provisioningObjectSummary resource type"
description: "Represents an action performed by the Microsoft Entra provisioning service and its associated properties."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# provisioningObjectSummary resource type

Namespace: microsoft.graph


Represents an action performed by the Microsoft Entra provisioning service and its associated properties. 

## Methods

| Method  | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/provisioningobjectsummary-list.md) | [provisioningObjectSummary](provisioningobjectsummary.md) | Get a list of all provisioning events that occurred in your tenant. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activityDateTime|DateTimeOffset|Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br/><br/> SUpports `$filter` (`eq`, `gt`, `lt`) and `orderby`.|
|changeId|String|Unique ID of this change in this cycle. Supports `$filter` (`eq`, `contains`).|
|cycleId|String|Unique ID per job iteration. Supports `$filter` (`eq`, `contains`).|
|durationInMilliseconds|Int32|Indicates how long this provisioning action took to finish. Measured in milliseconds.|
|id|String| Indicates the unique ID for the activity. Read-only. Supports `$filter` (`eq`, `contains`).|
|initiatedBy|[initiator](initiator.md)|Details of who initiated this provisioning. Supports `$filter` (`eq`, `contains`).|
|jobId|String|The unique ID for the whole provisioning job. Supports `$filter` (`eq`, `contains`).|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection|Details of each property that was modified in this provisioning action on this object.|
|provisioningAction|provisioningAction|Indicates the activity name or the operation name. Possible values are: `create`, `update`, `delete`, `stageddelete`, `disable`, `other` and `unknownFutureValue`. For a list of activities logged, refer to Microsoft Entra activity list. Supports `$filter` (`eq`, `contains`).|
|provisioningStatusInfo|[provisioningStatusInfo](provisioningstatusinfo.md)|Details of provisioning status.|
|provisioningSteps|[provisioningStep](provisioningstep.md) collection|Details of each step in provisioning.|
|servicePrincipal|[servicePrincipal](provisioningserviceprincipal.md) collection|Represents the service principal used for provisioning. Supports `$filter` (`eq`) for **id** and **name**.|
|sourceIdentity|[provisionedIdentity](provisionedidentity.md)|Details of source object being provisioned. Supports `$filter` (`eq`, `contains`) for **identityType**, **id**, and **displayName***.|
|sourceSystem|[provisioningSystem](provisioningsystem.md)|Details of source system of the object being provisioned. Supports `$filter` (`eq`, `contains`) for **displayName**.|
|targetIdentity|[provisionedIdentity](provisionedidentity.md)|Details of target object being provisioned. Supports `$filter` (`eq`, `contains`) for **identityType**, **id**, and **displayName***.|
|targetSystem|[provisioningSystem](provisioningsystem.md)|Details of target system of the object being provisioned. Supports `$filter` (`eq`, `contains`) for **displayName**.|
|tenantId|String|Unique Microsoft Entra tenant ID. Supports `$filter` (`eq`, `contains`).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningObjectSummary",
  "keyProperty": "id"
}-->

```json
{
  "provisioningAction": "String",
  "activityDateTime": "String (timestamp)",
  "changeId": "String",
  "cycleId": "String",
  "durationInMilliseconds": 1024,
  "id": "String (identifier)",
  "initiatedBy": {
    "@odata.type": "microsoft.graph.initiator"
  },
  "jobId": "String",
  "modifiedProperties": [
    {
      "@odata.type": "microsoft.graph.modifiedProperty"
    }
  ],
  "provisioningSteps": [
    {
      "@odata.type": "microsoft.graph.provisioningStep"
    }
  ],
  "servicePrincipal": [
    {
      "@odata.type": "microsoft.graph.provisioningServicePrincipal"
    }
  ],
  "sourceIdentity": {
    "@odata.type": "microsoft.graph.provisionedIdentity"
  },
  "sourceSystem": {
    "@odata.type": "microsoft.graph.provisioningSystem"
  },
  "provisioningStatusInfo": {
    "@odata.type": "microsoft.graph.provisioningStatusInfo"
  },
  "targetIdentity": {
    "@odata.type": "microsoft.graph.provisionedIdentity"
  },
  "targetSystem": {
    "@odata.type": "microsoft.graph.provisioningSystem"
  },
  "tenantId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningObjectSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
