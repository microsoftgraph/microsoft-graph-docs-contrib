---
title: "directSharingAbilities resource type"
description: "Describes direct sharing abilities."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# directSharingAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes direct sharing abilities.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|addExistingExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Describes whether the current user can add existing guest recipients to this item using direct sharing.|
|addInternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Describes whether the current user can add internal recipients to this item using direct sharing.|
|addNewExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Describes whether the current user can add new guest recipients to this item using direct sharing.|
|requestGrantAccess|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Describes whether the user querying this endpoint can request access for the user or on behalf of other users, after which site admins will be able to approve or deny the creation of a potential sharing link.|

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
