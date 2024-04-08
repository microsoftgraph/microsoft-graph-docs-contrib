---
title: "directSharingAbilities resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# directSharingAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addExistingExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|addInternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|addNewExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|requestGrantAccess|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.directSharingAbilities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directSharingAbilities",
  "requestGrantAccess": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "addNewExternalUsers": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "addExistingExternalUsers": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "addInternalUsers": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  }
}
```

