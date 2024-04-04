---
title: "product: getKnownIssuesByTimeRange"
description: "Get known issues related to a particular product based on a specified timeframe in the past."
author: "skandula"
ms.localizationpriority: medium
ms.subservice: "windows-update-business"
doc_type: apiPageType
ms.topic: reference
---

# product: getKnownIssuesByTimeRange

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get known issues related to a particular product based on a specified timeframe in the past.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_product_getknownissuesbytimerange" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-product-getknownissuesbytimerange-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/products/{id}/GetKnownIssuesByTimeRange(daysInPast={daysInPast},includeAllActive={includeAllActive})
```

## Query parameters

The following table shows the parameters that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|daysInPast|Int32|The number of days to look up in the past. This filter is applied on all known issues that are in final status and have a resolved date time.|
|includeAllActive|Boolean|If set to `true`, the response includes all active known issues. If set to `false`, the response doesn't include any active known issues.| 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method. 

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.knownIssue](../resources/windowsupdates-knownissue.md) objects for the given time range in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "windowsupdates.GetKnownIssuesByTimeRange",
  "sampleKeys": ["1"]
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/products/1/GetKnownIssuesByTimeRange(daysInPast=70,includeAllActive=false)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/windowsupdatesgetknownissuesbytimerange-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/windowsupdatesgetknownissuesbytimerange-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/windowsupdatesgetknownissuesbytimerange-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/windowsupdatesgetknownissuesbytimerange-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/windowsupdatesgetknownissuesbytimerange-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/windowsupdatesgetknownissuesbytimerange-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/windowsupdatesgetknownissuesbytimerange-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.knownIssue)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.knownIssue)",
  "value": [
    {
      "id": "WI670072",
      "status": "mitigatedExternal",
      "webViewUrl": "https://admin.microsoft.com/Adminportal/Home#/windowsreleasehealth/knownissues/:/issue/WI670072",
      "description": "Investigation concluded that the error reported by users was not caused by the August 2023 preview updates.",
      "startDateTime": "2023-08-22T10:00:00-07:00",
      "title": "Microsoft received reports about an “UNSUPPORTED_PROCESSOR” error",
      "resolvedDateTime": "2023-09-07T16:14:07.1881817-07:00",
      "lastUpdatedDateTime": "2023-09-07T16:41:58.577-07:00",
      "originatingKnowledgeBaseArticle": {
        "Url": "https://support.microsoft.com/help/5029351",
        "Id": "KB5029351"
      },
      "resolvingKnowledgeBaseArticle": null,
      "safeguardHoldIds": [],
      "knownIssueHistories": [
        {
          "createdDateTime": "2023-08-24T02:51:27.29Z",
          "body": {
            "content": "Microsoft has received reports of an issue in which users are receiving an “UNSUPPORTED_PROCESSOR” error message on a blue screen after installing updates released on August 22, 2023 (KB5029351 (https://support.microsoft.com/help/5029351)) and then restarting their device. KB5029351 (https://support.microsoft.com/help/5029351) might automatically uninstall to allow Windows to start up as expected. KB5029351 (https://support.microsoft.com/help/5029351) might not offer to some Windows devices which might be affected by this issue.\n\nIf you are experiencing issues, please use Feedback Hub to file a report following the below steps:\n    1. Launch Feedback Hub by opening the Start menu and typing \"Feedback hub\", or pressing the Windows key + F\n    2. Fill in the \"Summarize your feedback\" and \"Explain in more detail\" boxes, then click Next.\n    3. Under the \"Choose a category\" section, click the \"Problem\" button, and select \"Install and Update\" category. Then select \"Downloading, installing, and configuring Windows Update” subcategory. Click Next.\n    4. Under the \"Find similar feedback\" section, select the \"Make new bug\" radio button and click Next.\n    5. Under the \"Add more details\" section, supply any relevant detail (Note this is not critical to addressing your issue).\n    6. Expand the \"Recreate my problem\" box and press \"Start recording\". Reproduce the issue on your device.\n    7. Press \"Stop recording\" once finished. Click the \"Submit\" button.\nFor additional information, see Send feedback to Microsoft with the Feedback Hub app (https://support.microsoft.com/windows/send-feedback-to-microsoft-with-the-feedback-hub-app-f59187f8-8739-22d6-ba93-f66612949332).\n\nNext steps: We are presently investigating to determine if this is an issue caused by Microsoft. We will provide an update when more information is available.\n\nAffected platforms:\n    -  Client: Windows 11, version 22H2; Windows 10, version 22H2; Windows 11, version 21H2\n    -  Server: None\n",
            "contentType": "html"
          }
        }
      ]
    }
  ]
}
```
