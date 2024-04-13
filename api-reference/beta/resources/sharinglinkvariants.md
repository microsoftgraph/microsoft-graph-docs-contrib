---
title: "sharingLinkVariants resource type"
description: "Describes the status of potential sharing link variants which will generate a separate sharing link from the link that would otherwise be generated without the variant, yet with identical role and scope."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# sharingLinkVariants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the status of potential sharing link variants which will generate a separate sharing link from the link that would otherwise be generated without the variant, yet with identical role and scope.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|addressBarLinkPermission|sharingRole|Indicates the most permissive role with which an address bar link can be created. The possible values are: `none`, `view`, `edit`, `manageList`, `review`, `restrictedView`, `submitOnly`, `unknownFutureValue`.|
|allowEmbed|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates whether a link can be embedded.|
|passwordProtected|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates whether a link can be password protected, meaning that link users would need to enter a password to access the item for which the sharing link is produced. Creating a passwordProtected link for the first time requires providing a password.|
|requiresAuthentication|[sharingOperationStatus](../resources/sharingoperationstatus.md)|Indicates whether a link requires identity authentication for recipients. Users can be verified through either an email address or identity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharingLinkVariants"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharingLinkVariants",
  "passwordProtected": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "requiresAuthentication": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "addressBarLinkPermission": "String",
  "allowEmbed": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  }
}
```
