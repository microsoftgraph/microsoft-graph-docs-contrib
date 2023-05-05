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
| AllowDefaultEntitlement |  We will allow provisioning for users that just have msiam_access entitlement grant. |
| AzureIngestionAttributeOptimization | A boolean value for enabling an optimization for incremental sync when the amount of users managed is in the hundreds of thousands. |
| LookaheadQueryEnabled |  For inbound scenario, this is for looking ahead in the source directory to see the deletes that are going to occur. This is related to the early terminations scenario in Workday.|
| LookaheadQueryIntervalValue | The interval we want to lookback relating to the above flag. |
| QuarantineTooManyDeletes | A boolean value of whether we want to quarantine a RunProfile if more than a certain number of deletes occur within a period of time. |
| QuarantineTooManyDeletesThreshold | The number of deletes for the quarantine to trigger for the above flag. |

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

