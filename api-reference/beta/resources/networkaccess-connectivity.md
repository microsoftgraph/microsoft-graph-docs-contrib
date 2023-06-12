---
title: "connectivity resource type"
description: "connectivity is a top level entity under networkAccess which represent all connectivity components."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# connectivity resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

connectivity is a top level entity under networkAccess which represent all connectivity components.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List connectivities](../api/networkaccess-networkaccessroot-list-connectivity.md)|[microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md) collection|Get a list of the [microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md) objects and their properties.|
|[Create connectivity](../api/networkaccess-networkaccessroot-post-connectivity.md)|[microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md)|Create a new [microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md) object.|
|[Get connectivity](../api/networkaccess-connectivity-get.md)|[microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md) object.|
|[Update connectivity](../api/networkaccess-connectivity-update.md)|[microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md)|Update the properties of a [microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md) object.|
|[Delete connectivity](../api/networkaccess-networkaccessroot-delete-connectivity.md)|None|Delete a [microsoft.graph.networkaccess.connectivity](../resources/networkaccess-connectivity.md) object.|
|[List branches](../api/networkaccess-networkaccessroot-list-branches.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) collection|Get the branchSite resources from the branches navigation property.|
|[Create branchSite](../api/networkaccess-connectivity-post-branches.md)|[microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md)|Create a new branchSite object.|

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

