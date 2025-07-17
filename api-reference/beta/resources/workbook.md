---
title: "workbook resource type"
description: "Contains related workbook objects such as worksheets, tables, ranges, and so on."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 07/17/2024
---

# workbook resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains related workbook objects such as worksheets, tables, ranges, and so on.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create](../api/workbook-createsession.md) | [workbookSessionInfo](workbooksessioninfo.md) |Create a workbook session to start a persistent or non-persistent session.|
|[Close session](../api/workbook-closesession.md) | None |Close an existing session.|
|[Refresh session](../api/workbook-refreshsession.md) | None |Refresh an existing session.|

## Properties
None.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|names|[workbookNamedItem](workbooknameditem.md) collection |Represents a collection of workbooks scoped named items (named ranges and constants). Read-only.|
|tables|[workbookTable](workbooktable.md) collection |Represents a collection of tables associated with the workbook. Read-only.|
|worksheets|[workbookWorksheet](workbookworksheet.md) collection |Represents a collection of worksheets associated with the workbook. Read-only.|
|workbbookApplication|[workbookApplication](workbookapplication.md) |Represents the Excel workbookApplication that manages the workbook.|
|operations|[workbookOperation](workbookoperation.md) collection|The status of Workbook operations. Getting an operation collection is not supported, but you can get the status of a long-running operation if the `Location` header is returned in the response. Read-only. Nullable.|

## Functions

[Excel functions](#functions): Invoke a workbook function using the syntax `POST /me/drive/root/workbook/functions/{function-name}` and providing the function argument(s) in the body using a JSON object. The function's resulting `value` and any `error` strings are returned in the function result object. The `error` value of `null` indicates successful execution of the function. 

The complete list of supported functions are listed [here](https://support.office.com/article/Excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188). Refer to the function signature for specific parameter names and data types.

_Important notes:_ 
* The range input parameter is supplied using a range object instead of the range address string.  
* The index parameter is 1-indexed unlike the 0-index used in most of the APIs. 

Example: **vlookup**

In an Excel spreadsheet, the `vlookup` function takes the following arguments:

1. The value you want to look up, also called the lookup value.
2. The range where the lookup value is located. Remember that the lookup value should always be in the first column in the range for VLOOKUP to work correctly. For example, if your lookup value is in cell C2 then your range should start with C.
3. The column number in the range that contains the return value. For example, if you specify B2: D11 as the range, you should count B as the first column, C as the second, and so on.
4. Optionally, you can specify TRUE if you want an approximate match or FALSE if you want an exact match of the return value. If you don't specify anything, the default value will always be TRUE or approximate match.

Inside a cell, the `vlookup` function looks like this: 

=VLOOKUP(lookup value, range containing the lookup value, the column number in the range containing the return value, optionally specify TRUE for approximate match or FALSE for an exact match)

(See the documentation for the [VLOOKUP Excel function](https://support.office.com/article/VLOOKUP-function-0bbc8083-26fe-4963-8ab8-93a18ad188a1).)

The example below shows how to call the `vlookup` function and pass these parameters with the Excel REST API.
Request: 

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

Response:

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

Example: `median`

In an Excel spreadsheet, the `median` function takes an array of one or more input ranges.

Inside a cell, the `median` function looks like this example:

=MEDIAN(A2:A6)

(See the documentation for the [MEDIAN Excel function](https://support.office.com/article/MEDIAN-function-d0916313-4753-414c-8537-ce85bdd967d2).)

The example below shows how to call the `median` function and one or more input ranges with the Excel REST API. 

Request: 

```http 
POST https://graph.microsoft.com/beta/me/drive/root:/book1.xlsx:/workbook/functions/median
content-type: Application/Json 
authorization: Bearer {access-token} 
workbook-session-id: {session-id}

{
   "values":[
      {
         "address":"Sheet2!A1:A5"
      },
      {
         "address":"Sheet2!B1:B5"
      }
   ]
}
```

Response:

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
## JSON representation

<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
  "@odata.type": "microsoft.graph.workbook"
}-->
``` json
{
    "id": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Workbook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


