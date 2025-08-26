---
title: "connectivity: getWebCategoryByUrl"
description: "Method for getting a web category, given a Uniform Resource Locator (URL)"
author: "fgomulka"
ms.date: 08/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# connectivity: getWebCategoryByUrl

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate the web categorization of a Uniform Resource Locator (URL) in Global Secure Access (GSA) web content filtering.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-connectivity-getwebcategorybyurl-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-connectivity-getwebcategorybyurl-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/connectivity/getWebCategoryByUrl
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|url|String|Uniform Resource Locator (url). Required.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [webCategory](../resources/networkaccess-webcategory.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "connectivity.getwebcategorybyurl"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/connectivity/getWebCategoryByUrl(url='@url')?@url=msn.com/en-us/sports
```


### Response

The following example shows the response.
>
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.webCategory"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.networkaccess.webCategory",
    "name": "Sports",
    "displayName": "Sports",
    "group": "GeneralSurfing"
}
```

