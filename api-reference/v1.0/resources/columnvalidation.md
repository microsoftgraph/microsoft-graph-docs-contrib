---
author: swapnil1993
title: "columnValidation resource type"
description: "Contains data that validates column values."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---

# columnValidation resource type

Namespace: microsoft.graph

Represents properties that validates column values.
## Properties

| Property  | Type    | Description|
|:---------------|:--------|:--------------------------------------------------|
| **defaultLanguage**    | string  | Default BCP 47 language tag for the description.|
| **descriptions**    | Collection(microsoft.graph.displayNameLocalization)  | Localized messages that explain what is needed for this column's value to be considered valid. User will be prompted with this message if validation fails. |
| **formula**    | string  | The formula to validate column value. For examples, see [Examples of common formulas in lists](https://support.microsoft.com/office/examples-of-common-formulas-in-sharepoint-lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3).|


SharePoint formulas use a syntax similar to Excel formulas.
For more information, see [Examples of common formulas in SharePoint Lists][SPFormulas].

## JSON representation

The following is a JSON representation of a **columnValidation** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.columnValidation"} -->

```json
{
  "defaultLanguage": "string",
  "descriptions": [{ "@type": "microsoft.graph.displayNameLocalization" }],
  "formula": "string"
}
```

[SPFormulas]: https://support.office.com/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3
