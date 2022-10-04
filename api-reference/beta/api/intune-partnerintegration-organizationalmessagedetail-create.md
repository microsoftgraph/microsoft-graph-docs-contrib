---
title: "Create organizationalMessageDetail"
description: "Create a new organizationalMessageDetail object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create organizationalMessageDetail

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/organizationalMessageDetails
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the organizationalMessageDetail object.

The following table shows the properties that are required when you create the organizationalMessageDetail.

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the organizational message|
|scenario|[organizationalMessageScenario](../resources/intune-partnerintegration-organizationalmessagescenario.md)|Indicates the scenario for the message. Possible values are: `onboarding`, `lifecycle`, `unknownFutureValue`.|
|surface|[organizationalMessageSurface](../resources/intune-partnerintegration-organizationalmessagesurface.md)|Indicates the area where content will be displayed to customers. Possible values are: `actionCenter`, `getStarted`, `softLanding`, `unknownFutureValue`.|
|status|[organizationalMessageStatus](../resources/intune-partnerintegration-organizationalmessagestatus.md)|Indicates the deployment status of the message. Possible values are: `scheduled`, `active`, `completed`, `cancelled`, `unknownFutureValue`.|
|startDateTime|DateTimeOffset|The date and time of when the message will start being displayed to clients|
|endDateTime|DateTimeOffset|The date and time of when the message will stop being displayed to clients|
|createdDateTime|DateTimeOffset|The date and time of when the message was created|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the message was last modified|
|userEngagementStatistics|[organizationalMessageInsights](../resources/intune-partnerintegration-organizationalmessageinsights.md)|The statistics containing how the message was interacted with by clients. This includes the number of impressions, clicks, and dismisses from targeted clients.|
|frequency|[organizationalMessageFrequency](../resources/intune-partnerintegration-organizationalmessagefrequency.md)|The frequency at which a client will see the message. Possible values are: `weeklyOnce`, `monthlyOnce`, `monthlyTwice`, `unknownFutureValue`.|
|targeting|[organizationalMessageTargeting](../resources/intune-partnerintegration-organizationalmessagetargeting.md)|The groups of devices that will receive the message. This also contains a list of excluded groups that will not receive the message regardless of the device being part of an included group|
|content|[organizationalMessageContent](../resources/intune-partnerintegration-organizationalmessagecontent.md)|The content that will be displayed to clients for the message. This includes the text portion of the message and the displayed logo|
|theme|[organizationalMessageTheme](../resources/intune-partnerintegration-organizationalmessagetheme.md)|Indicates the theme for the experience. Possible values are: `update`, `training`, `welcomeToWindows`, `explore`, `unknownFutureValue`.|
|variant|String|Indicates the corresponding variant for the experience|



## Response
If successful, this method returns a `201 Created` response code and a [organizationalMessageDetail](../resources/intune-partnerintegration-organizationalmessagedetail.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/organizationalMessageDetails
Content-type: application/json
Content-length: 2049

{
  "@odata.type": "#microsoft.graph.organizationalMessageDetail",
  "scenario": "lifecycle",
  "surface": "getStarted",
  "status": "active",
  "startDateTime": "2016-12-31T23:58:46.7156189-08:00",
  "endDateTime": "2017-01-01T00:03:30.9241974-08:00",
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
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 2221

{
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
```





