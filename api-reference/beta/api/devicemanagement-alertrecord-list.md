---
title: "List alertRecords"
description: "Get a list of the alertRecord objects and their properties."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# List alertRecords

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [alertRecord](../resources/devicemanagement-alertrecord.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/monitoring/alertRecords
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.deviceManagement.alertRecord](../resources/devicemanagement-alertrecord.md) objects in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_alertrecord"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRecords
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-alertrecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-alertrecord-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-alertrecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-alertrecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-alertrecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-alertrecord-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceManagement.alertRecord",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/monitoring/alertRecords",
    "value": [
        {
            "id": "6c46a7ba-e78a-45e5-a81c-179ab8fd3e8e",
            "displayName": "Upload failure for Device Images",
            "status": "active",
            "severity": "warning",
            "alertRuleId": "30070507-6514-443b-8fa5-06979cedacdf",
            "alertRuleTemplate": "cloudPcImageUploadScenario",
            "detectedDateTime": "2022-03-30T11:55:00.1147865Z",
            "resolvedDateTime": null,
            "lastUpdatedDateTime": "2022-03-31T01:10:20.9648579Z",
            "alertImpact": {
                "value": 2,
                "aggregationType": "count"
            }
        },
        {
            "id": "44336915-dfcb-479b-a4d6-54bd66fa1ad6",
            "displayName": "Azure network connection failure impacting Cloud PCs",
            "status": "resolved",
            "severity": "warning",
            "alertRuleId": "215c55cc-b1c9-4d36-a870-be5778101714",
            "alertRuleTemplate": "cloudPcOnPremiseNetworkConnectionCheckScenario",
            "detectedDateTime": "2022-03-29T08:00:30.1313929Z",
            "resolvedDateTime": "2022-03-30T08:24:35.7020041Z",
            "lastUpdatedDateTime": "2022-03-30T08:24:35.7020041Z",
            "alertImpact": {
                "value": 100,
                "aggregationType": "count"
            }
        },
        {
            "id": "6e493630-3561-409f-b0e3-64d8483507d0",
            "status": "resolved",
            "displayName": "Frontline Cloud PCs max concurrency limit reached",
            "alertImpact": {
                "alertImpactDetails": [
                    {
                        "key": "Windows 365 Frontline 2 vCPU/8GB/128GB",
                        "value": "30"
                    },
                    {
                        "key": "Windows 365 Frontline 4 vCPU/16GB/256GB",
                        "value": "10"
                    }
                ],
                "value": 50
                "aggregationType": "percentage",
            },
            "alertRuleTemplate": "cloudPcFrontlineInsufficientLicensesScenario",
            "alertRuleId": "e85c75bb-3d4e-4f47-84d0-d96a6558c9e3",
            "severity": "critical",
            "detectedDateTimeUTC": "2021-10-23T08:41:01.0068946+08:00",
            "resolvedDateTimeUTC": "2021-10-23T08:43:31.7322847+08:00",
        }
    ]
}
```
