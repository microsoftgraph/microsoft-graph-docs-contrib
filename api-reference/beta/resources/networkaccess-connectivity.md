---
title: "connectivity resource type"
description: "connectivity is a top level entity under networkAccess which represent all connectivity components in Global Secure Access"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# connectivity resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

connectivity is a top level entity under networkAccess which represent all connectivity components in Global Secure Access

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List branches](../api/networkaccess-networkaccessroot-list-branches.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) collection|Get the branch resources from the branches navigation property.|
|[Create branchSite](../api/networkaccess-connectivity-post-branches.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md)|Create a new branch object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|webCategories|[microsoft.graph.networkaccess.webCategory](../resources/networkaccess-webcategory.md) collection|A web category is a group or classification of websites that share similar characteristics or content.	|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|branches|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) collection|branchSite represent locations for connectivity|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.connectivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.connectivity",
  "id": "String (identifier)",
  "webCategories": [
    {
      "@odata.type": "microsoft.graph.networkaccess.webCategory"
    }
  ]
}
```

