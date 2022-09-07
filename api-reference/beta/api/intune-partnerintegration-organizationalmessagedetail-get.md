---
title: "Get organizationalMessageDetail"
description: "Read properties and relationships of the organizationalMessageDetail object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get organizationalMessageDetail

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.Read.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/organizationalMessageDetails/{organizationalMessageDetailId}
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/organizationalMessageDetails/{organizationalMessageDetailId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 2368

{
  "value": {
    "@odata.type": "#microsoft.graph.organizationalMessageDetail",
    "id": "affbf3ad-f3ad-affb-adf3-fbafadf3fbaf",
    "scenario": "lifecycle",
    "surface": "getStarted",
    "status": "active",
    "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
    "endDateTime": "2017-01-01T00:03:30.9241974-08:00",
    "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
    "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
    "userEngagementStatistics": {
      "@odata.type": "microsoft.graph.organizationalMessageInsights",
      "impressions": 11,
      "clicks": 6,
      "dismisses": 9
    },
    "frequency": "monthlyOnce",
    "targeting": {
      "@odata.type": "microsoft.graph.organizationalMessageTargeting",
      "targetingType": "unknownFutureValue",
      "includeIds": [
        "Include Ids value"
      ],
      "excludeIds": [
        "Exclude Ids value"
      ]
    },
    "content": {
      "@odata.type": "microsoft.graph.organizationalMessageContent",
      "guidedContentId": "Guided Content Id value",
      "placementDetails": [
        {
          "@odata.type": "microsoft.graph.organizationalMessagePlacementDetail",
          "placement": "card0",
          "variants": [
            {
              "@odata.type": "microsoft.graph.organizationalMessageVariant",
              "variantId": "Variant Id value",
              "name": "Name value",
              "localizedTexts": [
                {
                  "@odata.type": "microsoft.graph.organizationalMessageLocalizedText",
                  "locale": "Locale value",
                  "text": {
                    "@odata.type": "microsoft.graph.organizationalMessageText",
                    "title": "Title value",
                    "message": "Message value",
                    "clickUrl": "https://example.com/clickUrl/",
                    "buttonText": "Button Text value"
                  }
                }
              ]
            }
          ]
        }
      ],
      "logoInfo": {
        "@odata.type": "microsoft.graph.organizationalMessageLogo",
        "logo": "bG9nbw==",
        "contentType": "unknownFutureValue",
        "logoCdnUrl": "https://example.com/logoCdnUrl/"
      }
    },
    "theme": "training",
    "variant": "Variant value"
  }
}
```






