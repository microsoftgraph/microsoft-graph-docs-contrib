---
title: "linkRoleAbilities resource type"
description: "Represents the sharing link operations for a link of a specified role."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# linkRoleAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sharing link operations for a link of a specified role.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|addExistingExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if the current user can add existing external user recipients to this sharing link.|
|addNewExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if the current user can add new external user recipients to this sharing link.|
|applyVariants|[sharingLinkVariants](../resources/sharinglinkvariants.md)|Indicates the status of the potential sharing link variants. If selected, it generates a separate sharing link from the sharing link that would otherwise be generated without the variant, yet with an identical role and scope.|
|createLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if links of this role can be created.|
|deleteLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if links of this role can be deleted.|
|linkAllowsExternalUsers|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if this link can include external users.|
|linkExpiration|[sharingLinkExpirationStatus](../resources/sharinglinkexpirationstatus.md)|Indicates if links must expire, meaning that the link will no longer be usable after a specified amount of time. If link expiration is enabled, a default link expiration time is provided.|
|retrieveLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if links of this role can be retrieved.|
|updateLink|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates if links of this role can be updated.|

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
