---
title: "organizationalMessageText resource type"
description: "Contains the text that will be displayed to users for a particular variant"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# organizationalMessageText resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains the text that will be displayed to users for a particular variant

## Properties
|Property|Type|Description|
|:---|:---|:---|
|title|String|Indicates the title that will be displayed|
|message|String|Indicates the message that will be displayed|
|clickUrl|String|Indicates the url that the user will be directed to when the message is clicked|
|buttonText|String|Indicates the text that will be displayed on the button of the message. This field applies to the softLanding surface|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalMessageText"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalMessageText",
  "title": "String",
  "message": "String",
  "clickUrl": "String",
  "buttonText": "String"
}
```




