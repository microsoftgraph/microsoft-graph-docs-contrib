---
title: "organizationalMessagePlacementDetail resource type"
description: "Contains the different variants of text that can be displayed for a given placement within a surface"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessagePlacementDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the different variants of text that can be displayed for a given placement within a surface

## Properties
|Property|Type|Description|
|:---|:---|:---|
|placement|[organizationalMessagePlacement](../resources/intune-partnerintegration-organizationalmessageplacement.md)|Indicates the name of the placement. Possible values are: `default`, `card0`, `card1`, `card2`, `card3`, `unknownFutureValue`.|
|variants|[organizationalMessageVariant](../resources/intune-partnerintegration-organizationalmessagevariant.md) collection|The list of different variants that can be displayed for this placement|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessagePlacementDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessagePlacementDetail",
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
```






