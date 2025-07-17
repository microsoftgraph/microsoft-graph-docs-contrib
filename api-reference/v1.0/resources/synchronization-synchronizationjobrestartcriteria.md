---
title: "synchronizationJobRestartCriteria resource type"
description: "Defines the scope of the synchronizationJob: restart action."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 04/03/2024
---

# synchronizationJobRestartCriteria resource type

Namespace: microsoft.graph

Defines the scope of the [synchronizationJob: restart](../api/synchronization-synchronizationjob-restart.md) action.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|resetScope|synchronizationJobRestartScope| Comma-separated combination of the following values: `None`, `ConnectorDataStore`, `Escrows`, `Watermark`, `QuarantineState`, `Full`, `ForceDeletes`. The property can also be empty. <br/> <ol><li> `None`: Starts a paused or quarantined provisioning job. **DO NOT USE.** Use the [Start synchronizationJob](../api/synchronization-synchronizationjob-start.md) API instead.</li><li>`ConnectorDataStore` - Clears the underlying cache for all users. **DO NOT USE. Contact Microsoft Support for guidance.**</li><li>`Escrows` - Provisioning failures are marked as escrows and retried. Clearing escrows will stop the service from retrying failures.</li><li>`Watermark` - Removing the watermark causes the service to reevaluate all the users again, rather than just processing changes.</li><li>`QuarantineState` - Temporarily lifts the quarantine.</li><li>Use `Full` if you want all of the options.</li><li>`ForceDeletes` - Forces the system to delete the pending deleted users when using the accidental deletions prevention feature and the deletion threshold is exceeded.</li></ol> Leaving this property empty emulates the **Restart provisioning** option in the Microsoft Entra admin center. It is similar to setting the **resetScope** to include `QuarantineState`, `Watermark`, and `Escrows`. This option meets most customer needs. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationJobRestartCriteria"
}-->

```json
{
  "resetScope": "String"
}


```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationJobRestartCriteria resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


