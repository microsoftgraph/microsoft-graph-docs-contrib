---
title: "sourcedAttribute resource type"
description: "An attribute specifying where the claim data is sourced."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# sourcedAttribute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An attribute specifying where the claim data is sourced.

Inherits from [customClaimAttributeBase](../resources/customclaimattributebase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the attribute on the specified source.|
|isExtensionAttribute|Boolean|A flag that indicates if the name specified is that of an extension attribute.|
|source|String|The source where the claim is going to retrieve its value. Valid sources include user, application, resource, audience and company.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sourcedAttribute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sourcedAttribute",
  "id": "String",
  "source": "String",
  "isExtensionAttribute": "Boolean"
}
```

