---
title: "billedUsage: export"
description: "Export billed usage data"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: apiPageType
---

# billedUsage: export
Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export the billed usage data.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "partners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/partners-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /reports/partners/billing/usage/billed/export
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|invoiceId|String|The inoiceId for which partner has requested to export data. Required.|
|attributeSet|microsoft.graph.partners.billing.attributeSet|Supported values are: `full`and `basic`. Default value is `full`. Choose `full` for a complete response or `basic` for a subset of attributes. Optional.|



## Response

If successful, this method returns a `202 Accepted` response code and a **Location** header containing the URL to long running operation.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "billedusagethis.export"
}
-->
``` http
POST https://graph.microsoft.com/beta/reports/partners/billing/usage/billed/export
Content-Type: application/json

{
  "invoiceId" : "G016907411",
  "attributeSet" : "fu
}
```


### Response
>**Note:** The response does not have response body.
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 OK
Location: https://graph.microsoft.com/beta/reports/partners/billing/operations/9ab9cb54-d07f-4f52-9ea6-a09d7de52c14
```
