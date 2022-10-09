---
title: "List alertRules"
description: "Get a list of the alertRule objects and their properties."
author: "zhishending"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# List alertRules

Namespace: microsoft.graph.deviceManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [alertRule](../resources/devicemanagement-alertrule.md) objects and their properties.

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
GET /deviceManagement/monitoring/alertRules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.deviceManagement.alertRule](../resources/devicemanagement-alertrule.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_alertrule"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/monitoring/alertRules
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.deviceManagement.alertRule",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/testprodbeta_cpc_sh/$metadata#deviceManagement/monitoring/alertRules",
  "value": [
      {
          "id": "215c55cc-b1c9-4d36-a870-be5778101714",
          "displayName": "Azure network connection failure impacting Cloud PCs",
          "severity": "warning",
          "isSystemRule": true,
          "description": "Azure network connection checks have failed and is potentially impacting existing Cloud PCs and blocking the provisioning of new Cloud PCs",
          "enabled": true,
          "alertRuleTemplate": "cloudPcOnPremiseNetworkConnectionCheckScenario",
          "threshold": {
              "aggregation": "count",
              "operator": "greaterOrEqual",
              "target": 90
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
      },
      {
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
      },
      {
          "id": "b43741fa-254a-445f-86cf-8def2c32571a",
          "displayName": "Provisioning Failure impacting Cloud PCs",
          "severity": "warning",
          "isSystemRule": true,
          "description": "Provisioning has failed and is delaying end users from connecting to their Cloud PCs.",
          "enabled": true,
          "alertRuleTemplate": "cloudPcProvisionScenario",
          "threshold": {
              "aggregation": "count",
              "operator": "greaterOrEqual",
              "target": 1
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
  ]
}
```
