---
title: "organizationalMessageVariant resource type"
description: "Contains the localized text to be displayed for a given variant"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageVariant resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the localized text to be displayed for a given variant

## Properties
|Property|Type|Description|
|:---|:---|:---|
|variantId|String|A unique identifier for this variant|
|name|String|The name of the variant|
|localizedTexts|[organizationalMessageLocalizedText](../resources/intune-partnerintegration-organizationalmessagelocalizedtext.md) collection|The list of localized texts for this variant|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageVariant"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageVariant",
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
```





