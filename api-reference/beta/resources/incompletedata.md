---
author: daspek
description: "The incompleteData facet indicates that a resource was generated with incomplete data."
ms.date: 10/06/2017
title: IncompleteData
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---
# incompleteData resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **incompleteData** facet indicates that a resource was generated with incomplete data.
The properties within may provide information about why there's incomplete data.

## JSON representation

<!-- { "blockType": "resource", "@type": "microsoft.graph.incompleteData" } -->

```json
{
  "missingDataBeforeDateTime": "String (timestamp)",
  "wasThrottled": false
}
```

## Properties

| Property                  | Type           | Description
|:--------------------------|:---------------|:--------------------------------
| missingDataBeforeDateTime | DateTimeOffset | The service doesn't have source data before the specified time.
| wasThrottled              | Boolean        | Some data wasn't recorded due to excessive activity.

<!--
{
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Facets/IncompleteData",
  "suppressions": []
}
-->


