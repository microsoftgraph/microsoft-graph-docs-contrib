---
title: "casesRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# casesRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List casesRoots](../api/security-list-cases.md)|[microsoft.graph.security.casesRoot](../resources/security-casesroot.md) collection|Get a list of the [casesRoot](../resources/security-casesroot.md) objects and their properties.|
|[Create casesRoot](../api/security-post-cases.md)|[microsoft.graph.security.casesRoot](../resources/security-casesroot.md)|Create a new [casesRoot](../resources/security-casesroot.md) object.|
|[Get casesRoot](../api/security-casesroot-get.md)|[microsoft.graph.security.casesRoot](../resources/security-casesroot.md)|Read the properties and relationships of a [casesRoot](../resources/security-casesroot.md) object.|
|[Update casesRoot](../api/security-casesroot-update.md)|[microsoft.graph.security.casesRoot](../resources/security-casesroot.md)|Update the properties of a [casesRoot](../resources/security-casesroot.md) object.|
|[Delete casesRoot](../api/security-delete-cases.md)|None|Deletes a [casesRoot](../resources/security-casesroot.md) object.|
|[List ediscoveryCases](../api/security-casesroot-list-ediscoverycases.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) collection|Get the ediscoveryCase resources from the ediscoveryCases navigation property.|
|[Create ediscoveryCase](../api/security-casesroot-post-ediscoverycases.md)|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md)|Create a new ediscoveryCase object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|ediscoveryCases|[microsoft.graph.security.ediscoveryCase](../resources/security-ediscoverycase.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.casesRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.casesRoot"
}
```

