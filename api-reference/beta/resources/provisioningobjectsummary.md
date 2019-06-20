---
title: "provisioningObjectSummary resource type"
description: "provisioningObjectsummary resource"
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "ms.prod"
doc_type: "resourcePageType"
---

# provisioningObjectSummary resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action performed by the Azure AD Provisioning service and it's associated properties. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get provisioningObjectSummary](../api/provisioningobjectsummary-get.md) | [provisioningObjectSummary](provisioningobjectsummary.md) | Read properties and relationships of provisioningObjectSummary object. |
| [List provisioningObjectSummary](../api/provisioningobjectsummary-list.md) | [provisioningObjectSummary](provisioningobjectsummary.md) | List provisioningObjectSummary object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|action|String|Indicates the activity name or the operation name (E.g. "Create User", "Add member to group"). For a list of activities logged, refer to Azure AD activity list.|
|activityDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|changeId|String|Unique ID of this change in this cycle|
|cycleId|String|Unique ID per job iteration|
|durationInMilliseconds|Int32||
|id|String| Indicates the unique ID for the activity. This is a read-only GUID.|
|initiatedBy|[initiator](initiator.md)|Details of who initiated this provisioning|
|jobId|String|The unique ID for the whole provisioning job|
|modifiedProperties|[modifiedProperty](modifiedproperty.md) collection||
|provisioningSteps|[provisioningStep](provisioningstep.md) collection||
|sourceIdentity|[provisionedIdentity](provisionedidentity.md)|Details of source object being provisioned|
|sourceSystem|[provisioningSystemDetails](provisioningsystemdetails.md)|Details of source system of the object being provisioned|
|statusInfo|[statusBase](statusbase.md)|Details of provisioning status|
|targetIdentity|[provisionedIdentity](provisionedidentity.md)|Details of target object being provisioned|
|targetSystem|[provisioningSystemDetails](provisioningsystemdetails.md)|Details of target system of the object being provisioned|
|tenantId|String|The Azure AD tenant unique id|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningObjectSummary",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "action": "String",
  "activityDateTime": "String (timestamp)",
  "changeId": "String",
  "cycleId": "String",
  "durationInMilliseconds": 1024,
  "id": "String (identifier)",
  "initiatedBy": {"@odata.type": "microsoft.graph.initiator"},
  "jobId": "String",
  "modifiedProperties": [{"@odata.type": "microsoft.graph.modifiedProperty"}],
  "provisioningSteps": [{"@odata.type": "microsoft.graph.provisioningStep"}],
  "sourceIdentity": {"@odata.type": "microsoft.graph.provisionedIdentity"},
  "sourceSystem": {"@odata.type": "microsoft.graph.provisioningSystemDetails"},
  "statusInfo": {"@odata.type": "microsoft.graph.statusBase"},
  "targetIdentity": {"@odata.type": "microsoft.graph.provisionedIdentity"},
  "targetSystem": {"@odata.type": "microsoft.graph.provisioningSystemDetails"},
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
