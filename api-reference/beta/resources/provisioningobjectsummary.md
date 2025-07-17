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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
>[!CAUTION]
>The **action** and **statusInfo** properties are deprecated. Property **action** should be replaced by **provisioningAction**. Property **statusInfo** should be replaced by **provisioningStatusInfo**.

Represents an action performed by the Microsoft Entra provisioning service and its associated properties.

Inherits from [entity](../resources/entity.md).

## Methods

| Method  | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/provisioningobjectsummary-list.md) | [provisioningObjectSummary](provisioningobjectsummary.md) | Get a list of all provisioning events that occurred in your tenant. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activityDateTime|DateTimeOffset|Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. <br/><br/> Supports `$filter` (`eq`, `gt`, `lt`) and `orderby`.|
|changeId|String|Unique ID of this change in this cycle. Supports `$filter` (`eq`, `contains`).|
|cycleId|String|Unique ID per job iteration. Supports `$filter` (`eq`, `contains`).|
|durationInMilliseconds|Int32|Indicates how long this provisioning action took to finish. Measured in milliseconds. Supports `$filter` (`eq`, `gt`, `lt`).|
|id|String| Indicates the unique ID for the activity. Read-only. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `contains`).|
|initiatedBy|[initiator](initiator.md)|Details of who initiated this provisioning. Supports `$filter` (`eq`, `contains`).|
|jobId|String|The unique ID for the whole provisioning job. Supports `$filter` (`eq`, `contains`).|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection|Details of each property that was modified in this provisioning action on this object.|
|provisioningAction|string|Indicates the activity name or the operation name. Possible values are: `create`, `update`, `delete`, `stageddelete`, `disable`, `other` and `unknownFutureValue`. For a list of activities logged, refer to Microsoft Entra activity list. Supports `$filter` (`eq`, `contains`).|
|provisioningSteps|[provisioningStep](provisioningstep.md) collection|Details of each step in provisioning.|
|provisioningStatusInfo|[provisioningStatusInfo](provisioningstatusinfo.md)|Details of provisioning status. Supports `$filter` (`eq`, `contains`) for **status**.|
|servicePrincipal|[servicePrincipal](serviceprincipal.md) collection|Represents the service principal used for provisioning. Supports `$filter` (`eq`) for **id** and **name**.|
|sourceIdentity|[provisionedIdentity](provisionedidentity.md)|Details of source object being provisioned. Supports `$filter` (`eq`, `contains`) for **identityType**, **id**, and **displayName**.|
|sourceSystem|[provisioningSystem](provisioningsystem.md)|Details of source system of the object being provisioned. Supports `$filter` (`eq`, `contains`) for **displayName**.|
|targetIdentity|[provisionedIdentity](provisionedidentity.md)|Details of target object being provisioned. Supports `$filter` (`eq`, `contains`) for **identityType*, **id**, and **displayName***.|
|targetSystem|[provisioningSystem](provisioningsystem.md)|Details of target system of the object being provisioned. Supports `$filter` (`eq`, `contains`) for **displayName**.|
|tenantId|String|Unique Microsoft Entra tenant ID. Supports `$filter` (`eq`, `contains`).|
|action (deprecated)|String|Indicates the activity name or the operation name (for example, Create user, Add member to group). For a list of activities logged, refer to Microsoft Entra activity list. This is deprecated. Please use **provisioningAction** instead. Supports `$filter` (`eq`, `contains`).|
|statusInfo (deprecated)|[statusBase](statusbase.md)|Details of provisioning status. This is deprecated. Please use **provisioningStatusInfo** instead. Supports `$filter` (`eq`, `contains`) for **status**.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningObjectSummary",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "action": "String",
  "provisioningAction": "String",
  "activityDateTime": "String (timestamp)",
  "changeId": "String",
  "cycleId": "String",
  "durationInMilliseconds": "Integer",
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
  "statusInfo": {
    "@odata.type": "microsoft.graph.statusBase"
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
