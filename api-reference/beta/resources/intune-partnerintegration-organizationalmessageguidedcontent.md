---
title: "organizationalMessageGuidedContent resource type"
description: "This will allow the admin to see the different templated organizational messages that can be created"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageGuidedContent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This will allow the admin to see the different templated organizational messages that can be created

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List organizationalMessageGuidedContents](../api/intune-partnerintegration-organizationalmessageguidedcontent-list.md)|[organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) collection|List properties and relationships of the [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) objects.|
|[Get organizationalMessageGuidedContent](../api/intune-partnerintegration-organizationalmessageguidedcontent-get.md)|[organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md)|Read properties and relationships of the [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) object.|
|[Create organizationalMessageGuidedContent](../api/intune-partnerintegration-organizationalmessageguidedcontent-create.md)|[organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md)|Create a new [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) object.|
|[Delete organizationalMessageGuidedContent](../api/intune-partnerintegration-organizationalmessageguidedcontent-delete.md)|None|Deletes a [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md).|
|[Update organizationalMessageGuidedContent](../api/intune-partnerintegration-organizationalmessageguidedcontent-update.md)|[organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md)|Update the properties of a [organizationalMessageGuidedContent](../resources/intune-partnerintegration-organizationalmessageguidedcontent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique identifier for the guided content|
|scenario|[organizationalMessageScenario](../resources/intune-partnerintegration-organizationalmessagescenario.md)|Indicates the scenario for the guided content. Possible values are: `onboarding`, `lifecycle`, `unknownFutureValue`.|
|theme|[organizationalMessageTheme](../resources/intune-partnerintegration-organizationalmessagetheme.md)|Indicates the theme for the guided content. Possible values are: `update`, `training`, `welcomeToWindows`, `explore`, `unknownFutureValue`.|
|surface|[organizationalMessageSurface](../resources/intune-partnerintegration-organizationalmessagesurface.md)|Indicates the area where content will be displayed to customers. Possible values are: `actionCenter`, `getStarted`, `softLanding`, `unknownFutureValue`.|
|placementDetails|[organizationalMessagePlacementDetail](../resources/intune-partnerintegration-organizationalmessageplacementdetail.md) collection|Contains the different types of text content that can be displayed to customers along with their localized values|
|logo|[organizationalMessageLogoGuide](../resources/intune-partnerintegration-organizationalmessagelogoguide.md)|Example of the logo that will be displayed to customers and its size requirements|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.organizationalMessageGuidedContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageGuidedContent",
  "id": "String (identifier)",
  "scenario": "String",
  "theme": "String",
  "surface": "String",
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
  "logo": {
    "@odata.type": "microsoft.graph.organizationalMessageLogoGuide",
    "logoCdnUrl": "String",
    "assetName": "String",
    "dimensions": {
      "@odata.type": "microsoft.graph.organizationalMessageLogoDimensions",
      "minWidth": 1024,
      "maxWidth": 1024,
      "minHeight": 1024,
      "maxHeight": 1024
    }
  }
}
```





