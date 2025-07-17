---
title: "Use workbook functions in Excel"
description: "You can use the workbook functions in Excel with Microsoft Graph to invoke any workbook function. Includes examples for vlookup and median functions."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
ms.date: 11/07/2024
---

# Use workbook functions in Excel

You can use the workbook functions in Excel with Microsoft Graph to invoke any workbook function by using the following syntax: `POST /me/drive/root/workbook/functions/{function-name}`. You provide the function arguments in the body using a JSON object. The function's resulting `value` and any `error` strings are returned in the function result object. The `error` value of `null` indicates successful execution of the function.

For a complete list of supported functions, see [Excel.Functions class](/javascript/api/excel/excel.functions?view=excel-js-preview&preserve-view=true). Refer to the function signature for specific parameter names and data types.

> [!IMPORTANT]
> - The range input parameter is supplied using a range object instead of the range address string.  
> - The index parameter is 1-indexed unlike the 0-index used in most of the APIs.

## Example: `vlookup`

In an Excel spreadsheet, the `vlookup` function takes the following arguments:

- **lookup_value** (required): The value you want to look up.

- **table_array** (required): The range of cells where the lookup value is located. Remember that the lookup value should always be in the first column in the range for **VLOOKUP** to work correctly. For example, if your lookup value is in cell C2, then your range should start with C.

- **col_index_num** (required): The column number in the range that contains the return value. For example, if you specify B2: D11 as the range, you should count B as the first column, C as the second, and so on.

- **range_lookup** (optional): The logical value that specifies whether you want **VLOOKUP** to find an approximate or an exact match. Specify **TRUE** if you want an approximate match or **FALSE** if you want an exact match of the return value. If you don't specify anything, the default value will always be TRUE or an approximate match.

Inside a cell, the `vlookup` function looks like this:

`=VLOOKUP`(lookup value, range containing the lookup value, the column number in the range containing the return value, optionally specify TRUE for approximate match or FALSE for an exact match)

For more information, see the documentation for the [VLOOKUP Excel function](https://support.office.com/article/VLOOKUP-function-0bbc8083-26fe-4963-8ab8-93a18ad188a1).

### Request

The following example shows how to call the `vlookup` function and pass these parameters with the Excel REST API.

```http
POST https://graph.microsoft.com/beta/me/drive/root:/book1.xlsx:/workbook/functions/vlookup
content-type: Application/Json
authorization: Bearer {access-token}
workbook-session-id: {session-id}

{
    "lookupValue": "Temperature",
    "tableArray": { "Address": "Sheet1!E1:G5" },
    "colIndexNum": 2,
    "rangeLookup": false
}
```

### Response

```http
HTTP code: 200 OK
content-type: application/json;odata.metadata

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#workbookFunctionResult",
    "@odata.type": "#microsoft.graph.workbookFunctionResult",
    "@odata.id": "/users('f6d92604-4b76-4b70-9a4c-93dfbcc054d5')/drive/root/workbook/functions/vlookup()",
    "error": null,
    "value": "28.3"
}
```

## Example: `median`

In an Excel spreadsheet, the `median` function takes an array of one or more input ranges.

Inside a cell, the `median` function looks like this example:

`=MEDIAN(A2:A6)`

For more information, see the documentation for the [MEDIAN Excel function](https://support.office.com/article/MEDIAN-function-d0916313-4753-414c-8537-ce85bdd967d2).

### Request

The following example shows how to call the `median` function and one or more input ranges with the Excel REST API.

```http
POST https://graph.microsoft.com/beta/me/drive/root:/book1.xlsx:/workbook/functions/median
content-type: Application/Json
authorization: Bearer {access-token}
workbook-session-id: {session-id}

{
"values" :  [
        { "address": "Sheet2!A1:A5" },
        { "address": "Sheet2!B1:B5" },
      ]
}
```

### Response

```http
HTTP code: 200 OK
content-type: application/json;odata.metadata

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#workbookFunctionResult",
  "@odata.type": "#microsoft.graph.workbookFunctionResult",
  "@odata.id": "/users('2abcad6a-2fca-4b6e-9577-e358a757d77d')/drive/root/workbook/functions/median()",
  "error": null,
  "value": 30
}
```

## Related content

* [Manage sessions in Excel with Microsoft Graph](excel-manage-sessions.md)
* [Write to an Excel workbook using Microsoft Graph](excel-write-to-workbook.md)
* [Update a range’s format in Excel with Microsoft Graph](excel-update-range-format.md)
* [Display a chart image in Excel with Microsoft Graph](excel-display-chart-image.md)
* [Use the Excel REST API](/graph/api/resources/excel)
