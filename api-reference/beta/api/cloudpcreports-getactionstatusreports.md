---
title: "cloudPcReports: getActionStatusReports"
description: "Get the remote action status reports, including data such as the Cloud PC ID, Cloud PC device display name, initiating user's principal name, device owner's user principal name, action taken, and action state."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getActionStatusReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the remote action status reports, including data such as the Cloud PC ID, Cloud PC device display name, initiating user's principal name, device owner's user principal name, action taken, and action state.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_getactionstatusreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getactionstatusreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getActionStatusReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                |
|:----------|:------------------|:-------------------------------------------------------------------------------------------|
| filter    | String            | OData `$filter` syntax. Supported filters are: `and`, `or`, `gt` ,`ge`, and `eq`.     |
| groupBy   | String collection | Specifies how to group the reports. If used, must have the same content as the **select** parameter.|
| orderBy   | String collection | Specifies the order by columns name. The default **orderBy** column is `RequestDateTime`.        |
| search    | String            | Specifies a String to search for.                                                          |
| select    | String collection | OData `$select` syntax. The selected columns of the reports.                    |
| skip      | Int32             | Number of records to skip.                                                                 |
| top       | Int32             | The number of top records to return. If not specified, the default limit is 25, with a maximum of 100.  |

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.getActionStatusReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getActionStatusReports
Content-Type: application/json
Content-length: 199

{
  "filter": "ActionState eq 'failed'",
  "select": [
    "Id",
    "CloudPcDeviceDisplayName",
    "BulkActionId",
    "BulkActionDisplayName",
    "CloudPcId",
    "InitiatedByUserPrincipalName",
    "DeviceOwnerUserPrincipalName",
    "Action",
    "ActionState",
    "RequestDateTime",
    "LastUpdatedDateTime",
    "ActionParameters"
  ],
  "skip": 0,
  "top": 50
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsgetactionstatusreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsgetactionstatusreports-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsgetactionstatusreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsgetactionstatusreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsgetactionstatusreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsgetactionstatusreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsgetactionstatusreports-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsgetactionstatusreports-python-snippets.md)]
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
      "Column": "Id",
      "PropertyType": "String"
    },
    {
      "Column": "CloudPcDeviceDisplayName",
      "PropertyType": "String"
    },
    {
      "Column": "BulkActionId",
      "PropertyType": "String"
    },
    {
      "Column": "BulkActionDisplayName",
      "PropertyType": "String"
    },
    {
      "Column": "CloudPcId",
      "PropertyType": "String"
    },
    {
      "Column": "InitiatedByUserPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "DeviceOwnerUserPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "Action",
      "PropertyType": "String"
    },
    {
      "Column": "ActionState",
      "PropertyType": "String"
    },
    {
      "Column": "RequestDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "LastUpdatedDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "ActionParameters",
      "PropertyType": "Json"
    }
  ],
  "Values": [
    [
      "662009bc-7732-4f6f-8726-25883518b33e",
      "CloudPC-Connie",
      "bdc8e6dd-0455-4412-83d9-c818664fe1f1",
      "Resize to 64GB RAM - John",
      "bdc8e6dd-0455-4412-83d9-c818664fe1f1",
      "john@contoso.com",
      "connie@contoso.com",
      "Resize",
      "failed",
      "2020-07-23T10:10:57Z",
      "2023-07-23T18:14:34Z",
      {
        "targetServicePlanId": "3bba9856-7cf2-4396-904a-00de74fba3a4"
      }
    ]
  ]
}
```
