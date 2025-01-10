---
title: "educationCsvDataProvider resource type (deprecated)"
description: "Used to set up the school data synchronization profile when CSV files are the input source."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationCsvDataProvider resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [educationsynchronizationprofile-deprecate](../includes/education-deprecate-educationsynchronizationprofile.md)]

Used to set up the school data synchronization profile when CSV files are the input source.

Derived from [educationSynchronizationDataProvider].

## Properties

| Property       | Type                                     | Description                                                           |
| :------------- | :--------------------------------------- | :-------------------------------------------------------------------- |
| customizations | [educationSynchronizationCustomizations] | Optional customizations to be applied to the synchronization profile. |

[educationsynchronizationdataprovider]: educationsynchronizationdataprovider.md
[educationsynchronizationcustomizations]: educationsynchronizationcustomizations.md

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationCsvDataProvider"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationCsvDataProvider",
  "customizations": {
    "@odata.type": "microsoft.graph.educationSynchronizationCustomizations"
  }
}
```


