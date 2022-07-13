---
title: "synchronizationJobRestartCriteria resource type"
description: "Defines the scope of the synchronizationJob: restart action."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# synchronizationJobRestartCriteria resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the scope of the [synchronizationJob: restart](../api/synchronization-synchronizationjob-restart.md) action.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|resetScope|String| Comma-separated combination of the following values: `None`, `ConnectorDataStore`, `Escrows`, `Watermark`, `QuarantineState`, `Full`, `ForceDeletes`. <br/> <ol><li> `None`: Emulates the **Restart provisioning** option in the Azure portal. It is akin to setting the **resetScope** to include `QuarantineState`, `Watermark`, and `Escrows`. In most cases, this will meet customer needs.</li><li>`ConnectorDataStore` - Clears the underlying cache for all users. **DO NOT USE. Contact Microsoft Support for guidance.**</li><li>`Escrows` - Provisioning failures are marked as escrows and retried. Clearing escrows will stop the service from retrying failures.</li><li>`Watermark` - Removing the watermark causes the service to re-evaluate all the users again, rather than just processing changes.</li><li>`QuarantineState` - Temporarily lifts the quarantine.</li><li>Use `Full` if you want all of the options.</li><li>`ForceDeletes` - Forces the system to delete the pending deleted users when using the accidental deletions prevention feature and the deletion threshold is exceeded.</li></ol>|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationJobRestartCriteria"
}-->

```json
{
    "criteria": {
        "resetScope": "String"
    }
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


