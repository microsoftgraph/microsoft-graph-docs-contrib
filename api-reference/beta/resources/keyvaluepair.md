---
title: "keyValuePair resource type"
description: "Key value pair for action parameters."
ms.localizationpriority: medium
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# keyValuePair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Key-value pair for action parameters. The configuration of this resource is shared by the following objects:
+ The **synchronizationJobSettings** property of [synchronizationJob](synchronization-synchronizationjob.md).
+ The **arguments** property of [Lifecycle Workflows tasks](identitygovernance-task.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|name|String|Name for this key-value pair. For more information about possible names for each resource type that uses this configuration, see [keyValuePair names and values](#keyvaluepair-names-and-values).|
|value|String|Value for this key-value pair. For more information about possible values for each resource type that uses this configuration, see [keyValuePair names and values](#keyvaluepair-names-and-values).|

### keyValuePair names and values

#### Supported by synchronizationJob

| Property | Possible values |
|:-|:-|
| AllowDefaultEntitlement |  The service will provision users that only have the `msiam_access` entitlement grant. |
| AzureIngestionAttributeOptimization | A Boolean value for enabling an optimization for incremental sync when the number of users managed is in the hundreds of thousands. |
| LookaheadQueryEnabled |  For inbound scenarios, investigates the source directory for deletes that will be carried out. This is related to the early termination scenario in Workday.|
| LookaheadQueryIntervalValue | The interval for the lookback investigation relating to `LookaheadQueryEnabled`. |
| QuarantineTooManyDeletes | A Boolean value that defines whether to quarantine a _RunProfile_ if more than a certain number of deletes occur within a period. |
| QuarantineTooManyDeletesThreshold | The number of deletes for the quarantine to trigger `QuarantineTooManyDeletes`. |

### Supported by Lifecycle Workflows tasks

For more information about the supported configuration for tasks in Lifecycle Workflows, see [Configure the arguments for built-in Lifecycle Workflow tasks](/graph/identitygovernance-lifecycleworkflows-task-arguments).


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.keyValuePair",
  "baseType": null
}-->

```json
{
  "name": "String",
  "value": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "keyValuePair resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

