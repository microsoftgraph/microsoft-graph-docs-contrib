---
title: "androidDeviceOwnerUserFacingMessage resource type"
description: "Represents a user-facing message with locale information as well as a default message to be used if the user's locale doesn't match with any of the localized messages"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidDeviceOwnerUserFacingMessage resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a user-facing message with locale information as well as a default message to be used if the user's locale doesn't match with any of the localized messages

## Properties
|Property|Type|Description|
|:---|:---|:---|
|localizedMessages|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|The list of <locale, message> pairs. This collection can contain a maximum of 500 elements.|
|defaultMessage|String|The default message displayed if the user's locale doesn't match with any of the localized messages|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerUserFacingMessage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerUserFacingMessage",
  "localizedMessages": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ],
  "defaultMessage": "String"
}
```
