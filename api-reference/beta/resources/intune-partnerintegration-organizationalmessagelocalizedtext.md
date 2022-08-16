---
title: "organizationalMessageLocalizedText resource type"
description: "Contains the text to be displayed for a given locale"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageLocalizedText resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the text to be displayed for a given locale

## Properties
|Property|Type|Description|
|:---|:---|:---|
|locale|String|The locale for this text|
|text|[organizationalMessageText](../resources/intune-partnerintegration-organizationalmessagetext.md)|The text that will be displayed to a user from this specific locale|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageLocalizedText"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageLocalizedText",
  "locale": "String",
  "text": {
    "@odata.type": "microsoft.graph.organizationalMessageText",
    "title": "String",
    "message": "String",
    "clickUrl": "String",
    "buttonText": "String"
  }
}
```




