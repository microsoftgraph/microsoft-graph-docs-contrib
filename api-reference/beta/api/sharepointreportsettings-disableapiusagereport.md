---
title: "sharePointReportSettings: disableApiUsageReport"
description: "Disable a SharePoint API usage report metric for the tenant."
author: "abhishekkakhandiki"
ms.date: 05/21/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# sharePointReportSettings: disableApiUsageReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Disable a [SharePoint API usage report metric](../resources/apiusagereportenablementstatus.md) for the tenant. After you disable a metric, SharePoint stops collecting and reporting data for that specific usage metric.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointreportsettings_disableapiusagereport" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointreportsettings-disableapiusagereport-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/reportSettings/sharePoint/disableApiUsageReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|metric|String|The name of the API usage report metric to disable. The supported values are: `egressReport`, `throttlingReport`. Required.|

## Response

If successful, this action returns a `200 OK` response code and an [apiUsageReportEnablementStatus](../resources/apiusagereportenablementstatus.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sharepointreportsettings_disableapiusagereport"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/reportSettings/sharePoint/disableApiUsageReport
Content-Type: application/json

{
  "metric": "egressReport"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sharepointreportsettings-disableapiusagereport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sharepointreportsettings-disableapiusagereport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sharepointreportsettings-disableapiusagereport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sharepointreportsettings-disableapiusagereport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sharepointreportsettings-disableapiusagereport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sharepointreportsettings-disableapiusagereport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.apiUsageReportEnablementStatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.apiUsageReportEnablementStatus",
  "metric": "egressReport",
  "onboardingStatus": "disabling"
}
```
