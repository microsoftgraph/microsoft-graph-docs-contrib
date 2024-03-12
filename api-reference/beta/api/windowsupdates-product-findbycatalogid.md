---
title: "product: findByCatalogId" 
description: "Find the product revisions associated with a catalog ID and the known issues directly or indirectly related to the catalog ID."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: apiPageType
---

# product: findByCatalogId

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Find the product revisions associated with a catalog ID and the known issues directly or indirectly related to the catalog ID.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_catalog_list_entries" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-catalog-list-entries-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/products/FindByCatalogId(catalogID='catalogID')
```

## Query parameters

In the request URL, provide the following query parameters with values.
The following table shows the parameter that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|catalogID|string|The catalog identifier from the catalog entry.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.product](../resources/windowsupdates-product.md) objects in the response body.

## Examples

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "windowsupdates.FindByCatalogId"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/products/FindByCatalogId(catalogID='10cb1ba292c5586e22c9991be3f12fbd39f2ebf231cb5d201c67f42fbaccc567')?expand=revisions($expand=catalogEntry,knowledgeBaseArticle),knownIssues($expand=originatingKnowledgeBaseArticle,resolvingKnowledgeBaseArticle)
```

### Response
The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.product)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.windowsUpdates.product)",
  "value": [
    {
      "id": "1",
      "name": "Windows 11, version 22H2",
      "groupName": "Windows 11",
      "friendlyNames": [
        "Version 22H2 (OS build 22621)"
      ],
      "revisions": [
        {
          "id": "10.0.22621.2215",
          "displayName": "Windows 11, version 22H2, build 22621.2215",
          "releaseDateTime": "2023-08-22T00:00:00Z",
          "version": "22H2",
          "osBuild": {
            "BuildNumber": 22621,
            "MajorVersion": 10,
            "MinorVersion": 0,
            "UpdateBuildRevision": 2215
          },
          "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "deployableUntilDateTime": null,
            "displayName": "08/22/2023 - 2023.08 D Update for Windows 10 and later",
            "id": "10cb1ba292c5586e22c9991be3f12fbd39f2ebf231cb5d201c67f42fbaccc567",
            "releaseDateTime": "2023-08-22T00:00:00Z",
            "catalogName": "2023-08 Cumulative Update Preview for Windows 10 and later",
            "isExpeditable": true,
            "qualityUpdateCadence": "Monthly",
            "qualityUpdateClassification": "NonSecurity",
            "shortName": "2023.08 D",
            "cveSeverityInformation": null
          },
          "knowledgeBaseArticle": {
            "Url": "https://support.microsoft.com/help/5029351",
            "Id": "KB5029351"
          }
        }
      ],
      "knownIssues": [
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
  ]
}
```
