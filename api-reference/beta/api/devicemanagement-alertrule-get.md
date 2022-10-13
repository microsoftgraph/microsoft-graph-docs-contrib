---
title: "Get alertRule"
description: "Read the properties and relationships of an alertRule object."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get alertRule

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [alertRule](../resources/devicemanagement-alertrule.md) object.

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
GET /deviceManagement/monitoring/alertRules/{alertRuleId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_alertrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRules/30070507-6514-443b-8fa5-06979cedacdf
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceManagement.alertRule"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/monitoring/alertRules/$entity",
    "id": "30070507-6514-443b-8fa5-06979cedacdf",
    "displayName": "Upload failure for Device Images",
    "severity": "warning",
    "isSystemRule": true,
    "description": "Device Image Uploads have failed and can delay the provisioning of new Cloud PCs.",
    "enabled": true,
    "alertRuleTemplate": "cloudPcImageUploadScenario",
    "threshold": {
        "aggregation": "count",
        "operator": "greaterOrEqual",
        "target": 2
    },
    "notificationChannels": [
        {
            "notificationChannelType": "portal",
            "receivers": [
                ""
            ],
            "notificationReceivers": []
        },
        {
            "notificationChannelType": "email",
            "receivers": [
                "serena.davis@contoso.com"
            ],
            "notificationReceivers": [
                {
                    "locale": "en-us",
                    "contactInformation": "serena.davis@contoso.com"
                }
            ]
        }
    ]
}
```
