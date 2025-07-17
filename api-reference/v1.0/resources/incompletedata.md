---
author: daspek
title: incompleteData resource type
description: The incompleteData facet indicates that a resource was generated with incomplete data.
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 03/06/2024
---
# incompleteData resource type

Namespace: microsoft.graph

The **incompleteData** facet indicates that a resource was generated with incomplete data.
The properties within might provide information about why the data is incomplete.

## Properties

| Property                  | Type           | Description
|:--------------------------|:---------------|:--------------------------------
| missingDataBeforeDateTime | DateTimeOffset | The service does not have source data before the specified time.
| wasThrottled              | Boolean        | Some data was not recorded due to excessive activity.

## JSON representation

<!-- { "blockType": "resource", "@type": "microsoft.graph.incompleteData" } -->

```json
{
  "missingDataBeforeDateTime": "String (timestamp)",
  "wasThrottled": false
}
```

<!--
{
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Facets/incompleteData",
  "suppressions": []
}
-->

