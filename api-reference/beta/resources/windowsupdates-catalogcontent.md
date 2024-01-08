---
title: "catalogContent resource type"
description: "Represents content that can be deployed from the catalog."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# catalogContent resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content that can be deployed from the catalog.

The catalog keeps an inventory of available updates identified by a [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md). The entry, in addition to an **id**, might contain other properties to describe the content. Different categories of content have different entry types and properties, such as `feature`, `quality`, and `driver`.

The typical workflow is to [list entries](../api/windowsupdates-catalog-list-entries.md) of the catalog filtered by specific search criteria until the desired updates to be deployed are identified. Relevant entries can then be wrapped by the **catalogContent** resource type and passed as [deployableContent](../resources/windowsupdates-deployablecontent.md) input to either a [deployment](../resources/windowsupdates-deployment.md) or [contentApproval](../resources/windowsupdates-contentapproval.md) to initiate offering the content to a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md).

Inherits from [deployableContent](../resources/windowsupdates-deployablecontent.md).

## Properties
None.

## Relationships
| Relationship | Type                                                                                       | Description                                                          |
|:-------------|:-------------------------------------------------------------------------------------------|:---------------------------------------------------------------------|
| catalogEntry | [microsoft.graph.windowsUpdates.catalogEntry](../resources/windowsupdates-catalogentry.md) | Metadata for a piece of content that you can approve for deployment. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.catalogContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent"
}
```
