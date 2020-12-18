---
title: "governancePolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# governancePolicy resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|decisionMakerCriteria|[governanceCriteria](../resources/governancecriteria.md) collection|**TODO: Add Description**|
|notificationPolicy|[governanceNotificationPolicy](../resources/governancenotificationpolicy.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.governancePolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.governancePolicy",
  "decisionMakerCriteria": [
    {
      "@odata.type": "microsoft.graph.groupMembershipGovernanceCriteria"
    }
  ],
  "notificationPolicy": {
    "@odata.type": "microsoft.graph.governanceNotificationPolicy"
  }
}
```

