---
title: "Display a chart image in Excel"
description: "When you retrieve a chart image, the Excel API in Microsoft Graph returns the image as a base-64 string that you can display inside an HTML image tag."
ms.localizationpriority: medium
author: "lumine2008"
ms.subservice: "excel"
ms.date: 11/07/2024
---

# Display a chart image in Excel

When you perform a [GET operation to retrieve a chart image](/graph/api/chart-image), the Excel API in Microsoft Graph returns the image as a base-64 string. You can display the base-64 string inside an HTML image tag:

```html
 <img src="data:image/png;base64,{base-64 chart image string}/>
```

For default behavior, use `Image(width=0,height=0,fittingMode='fit')`.

Following is an example of a chart image returned with the default parameters.

![Excel chart image with default height and width.](https://cdn.graph.office.net/prod/GraphDocuments/en-us/concepts/images/GetChart-default.png)

If you want to customize the display of the image, specify a height, width, and a fitting mode. Here is what the same chart image looks like if you retrieve it with these parameters: `Image(width=500,height=500,fittingMode='Fill')`.

## Related content

* [Manage sessions in Excel with Microsoft Graph](excel-manage-sessions.md)
* [Write to an Excel workbook using Microsoft Graph](excel-write-to-workbook.md)
* [Use workbook functions in Excel with Microsoft Graph](excel-use-functions.md)
* [Update a range’s format in Excel with Microsoft Graph](excel-update-range-format.md)
* [Use the Excel REST API](/graph/api/resources/excel)
