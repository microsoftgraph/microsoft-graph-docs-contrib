---
title: "getKnownIssuesByTimeRange"
description: "This function gets the known issues related to a particular product based on timeframe in the past."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# getKnownIssuesByTimeRange 

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This function gets the known issues related to a particular product based on timeframe in the past.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/products({id})/GetKnownIssuesByTimeRange(daysInPast={daysInPast},includeAllActive={includeAllActive})

``` 
## Function Parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that must be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|daysInPast|Int32|This is the number of days to lookup in the past. This filter is applied on all known issues which are in final status and have a resolved date time.|
|includeAllActive|Boolean|The response will include all Active known issues if this is set to true or null. If this is set to false, the response will not have any Active known issues.|

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "windowsupdates.GetKnownIssuesByTimeRange"
}
-->
``` http
GET /admin/windows/updates/products('1')/GetKnownIssuesByTimeRange(daysInPast=70,includeAllActive=false)
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
>
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsupdates.GetKnownIssuesByTimeRange)"
}
-->
``` http

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
