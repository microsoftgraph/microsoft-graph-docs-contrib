---
title: "webFilteringDestinationMatching resource type"
description: "Represents the destination criteria used to match web traffic in a web filtering rule."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringDestinationMatching resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the destination criteria used to match web traffic in a [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

This type is used by the **destinations** property of [webFilteringMatchingConditions](../resources/networkaccess-webfilteringmatchingconditions.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|httpRequestMethod|[microsoft.graph.networkaccess.httpRequestMethod](../resources/enums-networkaccess.md#httprequestmethod-values)|The HTTP request method to match. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `get`, `post`, `patch`, `put`, `delete`, `unknownFutureValue`.|
|targets|[microsoft.graph.networkaccess.webFilteringDestinationTarget](../resources/networkaccess-webfilteringdestinationtarget.md) collection|The URL or web category destinations to match.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringDestinationMatching"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringDestinationMatching",
  "targets": [
    {
      "@odata.type": "microsoft.graph.networkaccess.webFilteringWebCategoryDestination"
    }
  ],
  "httpRequestMethod": "String"
}
```
