---
title: "governanceRoleAssignmentRequestStatus resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# governanceRoleAssignmentRequestStatus resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|String|**TODO: Add Description**|
|statusDetails|[KeyValue](../resources/keyvalue.md) collection|**TODO: Add Description**|
|subStatus|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.governanceRoleAssignmentRequestStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.governanceRoleAssignmentRequestStatus",
  "status": "String",
  "subStatus": "String",
  "statusDetails": [
    {
      "@odata.type": "microsoft.graph.KeyValue"
    }
  ]
}
```

