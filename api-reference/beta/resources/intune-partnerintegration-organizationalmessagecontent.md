---
title: "organizationalMessageContent resource type"
description: "Contains the entire content of the message that will be displayed to the clients"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageContent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the entire content of the message that will be displayed to the clients

## Properties
|Property|Type|Description|
|:---|:---|:---|
|guidedContentId|String|The ID of the guided content that this content is using|
|placementDetails|[organizationalMessagePlacementDetail](../resources/intune-partnerintegration-organizationalmessageplacementdetail.md) collection|Contains the different types of text content that can be displayed to customers along with their localized values|
|logoInfo|[organizationalMessageLogo](../resources/intune-partnerintegration-organizationalmessagelogo.md)|The logo that will be displayed to the clients. This will contain ether the binary contents of the logo or a url to the logo's location|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageContent",
  "guidedContentId": "String",
  "placementDetails": [
    {
      "@odata.type": "microsoft.graph.organizationalMessagePlacementDetail",
      "placement": "String",
      "variants": [
        {
          "@odata.type": "microsoft.graph.organizationalMessageVariant",
          "variantId": "String",
          "name": "String",
          "localizedTexts": [
            {
              "@odata.type": "microsoft.graph.organizationalMessageLocalizedText",
              "locale": "String",
              "text": {
                "@odata.type": "microsoft.graph.organizationalMessageText",
                "title": "String",
                "message": "String",
                "clickUrl": "String",
                "buttonText": "String"
              }
            }
          ]
        }
      ]
    }
  ],
  "logoInfo": {
    "@odata.type": "microsoft.graph.organizationalMessageLogo",
    "logo": "binary",
    "contentType": "String",
    "logoCdnUrl": "String"
  }
}
```




