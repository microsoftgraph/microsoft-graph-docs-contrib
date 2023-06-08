---
title: "conditionalAccessPolicy resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# conditionalAccessPolicy resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditionalAccessPolicies](../api/networkaccess-filteringprofile-list-conditionalaccesspolicies.md)|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) collection|Get a list of the [microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) objects and their properties.|
|[Create conditionalAccessPolicy](../api/networkaccess-filteringprofile-post-conditionalaccesspolicies.md)|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md)|Create a new [microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) object.|
|[Get conditionalAccessPolicy](../api/networkaccess-conditionalaccesspolicy-get.md)|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) object.|
|[Update conditionalAccessPolicy](../api/networkaccess-conditionalaccesspolicy-update.md)|[microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md)|Update the properties of a [microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) object.|
|[Delete conditionalAccessPolicy](../api/networkaccess-filteringprofile-delete-conditionalaccesspolicies.md)|None|Delete a [microsoft.graph.networkaccess.conditionalAccessPolicy](../resources/networkaccess-conditionalaccesspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.conditionalAccessPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.conditionalAccessPolicy",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String"
}
```

