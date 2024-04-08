---
title: "linkRoleAbilities resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# linkRoleAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addExistingExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|addNewExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|applyVariants|[sharingLinkVariants](../resources/sharinglinkvariants.md)|**TODO: Add Description**|
|createLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|deleteLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|linkAllowsExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|linkExpiration|[sharingLinkExpirationStatus](../resources/sharinglinkexpirationstatus.md)|**TODO: Add Description**|
|retrieveLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|updateLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.linkRoleAbilities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkRoleAbilities",
  "createLink": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "retrieveLink": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "updateLink": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "deleteLink": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "applyVariants": {
    "@odata.type": "microsoft.graph.sharingLinkVariants"
  },
  "linkExpiration": {
    "@odata.type": "microsoft.graph.sharingLinkExpirationStatus"
  },
  "addNewExternalUsers": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "addExistingExternalUsers": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "linkAllowsExternalUsers": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  }
}
```

