---
title: "multiTenantCollaborationPendingMemberState resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# multiTenantCollaborationPendingMemberState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failureReason|String|**TODO: Add Description**|
|processingStatus|multiTenantCollaborationMemberProcessingStatus|**TODO: Add Description**. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|state|multiTenantCollaborationMemberState|**TODO: Add Description**. The possible values are: `prospective`, `admitted`, `joined`, `declined`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.multiTenantCollaborationPendingMemberState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.multiTenantCollaborationPendingMemberState",
  "state": "String",
  "processingStatus": "String",
  "failureReason": "String"
}
```

