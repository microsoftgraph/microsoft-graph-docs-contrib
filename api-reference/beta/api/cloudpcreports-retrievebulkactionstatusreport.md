---
title: "cloudPcReports: retrieveBulkActionStatusReport"
description: "Get the bulk remote action status reports, including data such as the bulk action ID, bulk action display name, initiating user's principal name, action type, and action state."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 11/12/2024
---

# cloudPcReports: retrieveBulkActionStatusReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the bulk remote action status report, including data such as the bulk action ID, bulk action display name, initiating user's principal name, action type, and action state.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_retrieveBulkActionStatusReport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievebulkactionstatusreport-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveBulkActionStatusReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                            |
|:----------|:------------------|:-------------------------------------------------------------------------------------------------------|
| filter    | String            | OData `$filter` syntax. Supported filters are: `and`, `or`, `gt` ,`ge`, and `eq`.                      |
| groupBy   | String collection | Specifies how to group the reports. If used, must have the same content as the **select** parameter.   |
| orderBy   | String collection | Specifies the order by columns name. The default **orderBy** column is `RequestDateTime`.              |
| search    | String            | Specifies a string to search for.                                                                      |
| select    | String collection | OData `$select` syntax. The selected columns of the reports.                                           |
| skip      | Int32             | Number of records to skip.                                                                             |
| top       | Int32             | The number of top records to return. If not specified, the default limit is 25, with a maximum of 100. |

## Response

If successful, this method returns a `200 OK` response code and a stream object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.retrieveBulkActionStatusReport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveBulkActionStatusReport
Content-Type: application/octet-stream

{
  "filter": "RequestDateTime ge datetime'2024-08-30'",
  "select": [
    "BulkActionId",
    "BulkActionDisplayName",
    "Action",
    "BulkActionStatus",
    "InitiatedByUserPrincipalName",
    "RequestDateTime",
    "SucceedCount",
    "FailedCount",
    "InprogressCount",
    "TotalCount",
    "Completion"
  ],
  "skip": 0,
  "top": 50
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsretrievebulkactionstatusreport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsretrievebulkactionstatusreport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsretrievebulkactionstatusreport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsretrievebulkactionstatusreport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsretrievebulkactionstatusreport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
  "TotalRowCount": 1,
  "Schema": [
    {
      "Column": "BulkActionId",
      "PropertyType": "String"
    },
    {
      "Column": "BulkActionDisplayName",
      "PropertyType": "String"
    },
    {
      "Column": "Action",
      "PropertyType": "String"
    },
    {
      "Column": "BulkActionStatus",
      "PropertyType": "String"
    },
    {
      "Column": "RequestDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "SucceedCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "FailedCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "InprogressCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "TotalCount",
      "PropertyType": "Int64"
    }
  ],
  "Values": [
    [
      "63792ef5-db62-437f-8d7e-7b3b695abb48",
      "BulkRestart on 2024-8-22 17:26:52 GMT+0800 (China Standard Time)",
      "Restart",
      "",
      "2024-08-22T09:26:54",
      1,
      0,
      0,
      1
    ]
  ]
}
```
