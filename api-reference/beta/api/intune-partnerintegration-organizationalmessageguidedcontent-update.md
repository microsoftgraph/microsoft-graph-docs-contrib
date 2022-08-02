---
title: "Update organizationalMessageGuidedContent"
description: "Update the properties of a organizationalMessageGuidedContent object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update organizationalMessageGuidedContent

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementApps.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/organizationalMessageGuidedContents/{organizationalMessageGuidedContentId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) object.

The following table shows the properties that are required when you create the [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the guided content|
|scenario|[organizationalMessageScenario](../resources/intune-partnerintegration-organizationalmessagescenario.md)|Indicates the scenario for the guided content. Possible values are: `onboarding`, `lifecycle`.|
|theme|[organizationalMessageTheme](../resources/intune-partnerintegration-organizationalmessagetheme.md)|Indicates the theme for the guided content. Possible values are: `update`, `training`, `welcomeToWindows`.|
|surface|[organizationalMessageSurface](../resources/intune-partnerintegration-organizationalmessagesurface.md)|Indicates the area where content will be displayed to customers. Possible values are: `actionCenter`, `getStarted`, `softLanding`.|
|placementDetails|[organizationalMessagePlacementDetail](../resources/intune-partnerintegration-organizationalmessageplacementdetail.md) collection|Contains the different types of text content that can be displayed to customers along with their localized values|
|logo|[organizationalMessageLogoGuide](../resources/intune-partnerintegration-organizationalmessagelogoguide.md)|Example of the logo that will be displayed to customers and its size requirements|



## Response
If successful, this method returns a `200 OK` response code and an updated [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/organizationalMessageGuidedContents/{organizationalMessageGuidedContentId}
Content-type: application/json
Content-length: 1403

{
  "@odata.type": "#microsoft.graph.organizationalMessageGuidedContent",
  "scenario": "lifecycle",
  "theme": "training",
  "surface": "getStarted",
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
  "logo": {
    "@odata.type": "microsoft.graph.organizationalMessageLogoGuide",
    "logoCdnUrl": "https://example.com/logoCdnUrl/",
    "assetName": "Asset Name value",
    "dimensions": {
      "@odata.type": "microsoft.graph.organizationalMessageLogoDimensions",
      "minWidth": 8,
      "maxWidth": 8,
      "minHeight": 9,
      "maxHeight": 9
    }
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1452

{
  "@odata.type": "#microsoft.graph.organizationalMessageGuidedContent",
  "id": "13e64843-4843-13e6-4348-e6134348e613",
  "scenario": "lifecycle",
  "theme": "training",
  "surface": "getStarted",
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
  "logo": {
    "@odata.type": "microsoft.graph.organizationalMessageLogoGuide",
    "logoCdnUrl": "https://example.com/logoCdnUrl/",
    "assetName": "Asset Name value",
    "dimensions": {
      "@odata.type": "microsoft.graph.organizationalMessageLogoDimensions",
      "minWidth": 8,
      "maxWidth": 8,
      "minHeight": 9,
      "maxHeight": 9
    }
  }
}
```




