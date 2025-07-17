---
title: "Chart: Image"
description: "Renders the chart as a base64-encoded image by scaling the chart to fit the specified dimensions."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: apiPageType
ms.date: 06/04/2024
---

# Chart: Image

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Renders the chart as a base64-encoded image by scaling the chart to fit the specified dimensions.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chart_image" } -->
[!INCLUDE [permissions-table](../includes/permissions/chart-image-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/drive/items/{id}/workbook/worksheets/{id|name}/charts/{name}/Image(width=0,height=0,fittingMode='fit')
GET /me/drive/root:/{item-path}:/workbook/worksheets/{id|name}/charts/{name}/Image(width=0,height=0,fittingMode='fit')

```
## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Workbook-Session-Id  | Workbook session ID that determines if changes are persisted or not. Optional.|

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter | Type|Description|
|:---------------|:--------|:----------|
|height|number|Optional. The desired height of the resulting image.|
|width|number|Optional. The desired width of the resulting image.|
|fittingMode|string|Optional. The method used to scale the chart to the specified dimensions (if both height and width are set)." The possible values are: `Fit`, `FitAndCenter`, `Fill`.|

## Response

If successful, this method returns `200 OK` response code and base-64 image string in the response body.

## Example
Here is an example of how to call this API.
##### Request
The following example shows a request.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/{name}/Image(width=0,height=0,fittingMode='fit')
```

##### Response
The following example shows the response. Note: The response object shown here might be shortened for readability.
<!-- { "blockType": "ignored" } -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
"value" : "base-64 chart image string"
}
```

##### Usage

You can display the base-64 string inside an HTML image tag: `<img src="data:image/png;base64,{base-64 chart image string}/>`.

For default behavior, use `Image(width=0,height=0,fittingMode='fit')`. The following example shows a chart image returned with the default parameters.

:::image type="content" source="../images/GetChart-default.png" alt-text="Screenshot of an Excel chart image displayed with the default height and width." loc-scope="third-party":::

If you want to customize the display of the image, specify a height, width, and a fitting mode. The following example shows the same chart image looks like if you retrieve it with these parameters: `Image(width=500,height=500,fittingMode='Fill')`.

:::image type="content" source="../images/GetChart-fill.png" alt-text="Screenshot of an Excel chart image displayed with the specified height and width." loc-scope="third-party":::



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Chart: Image",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


