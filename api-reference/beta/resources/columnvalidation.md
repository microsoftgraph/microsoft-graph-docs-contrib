---
author: swshriva
ms.author: swshriva
ms.date: 08/28/2020
title: ColumnValidation
---
# ColumnValidation resource type

The **columnValidation** on a [columnDefinition](columnDefinition.md) resource contains data for validating the column.

## JSON representation

Here is a JSON representation of a **columnValidation** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.columnValidation"} -->

```json
{
  "formula": "string",
  "descriptions": [{ "@type": "microsoft.graph.displayNameLocalization" }],
  "defaultLanguage": "string"
}
```

## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| **formula**    | string  | The formula to validate column value. Formula examples can be found [here](https://support.microsoft.com/en-us/office/examples-of-common-formulas-in-sharepoint-lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3) 
| **descriptions**    | Collection(microsoft.graph.displayNameLocalization)  | Localized messages that explain what is needed for this column's value to be considered valid. User will be prompted with this message if validation fails 
| **defaultLanguage**    | string  | Default BCP 47 language tag for the description

SharePoint formulas use a syntax similar to Excel formulas.
See [Examples of common formulas in SharePoint Lists][SPFormulas] for more information.

[SPFormulas]: https://support.office.com/en-us/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3

=