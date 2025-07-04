---
title: "appleAppListItem resource type"
description: "Represents an app in the list of managed Apple applications"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# appleAppListItem resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents an app in the list of managed Apple applications


Inherits from [appListItem](../resources/intune-deviceconfig-applistitem.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The application name Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|
|publisher|String|The publisher of the application Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|
|appStoreUrl|String|The Store URL of the application Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|
|appId|String|The application or bundle identifier of the application Inherited from [appListItem](../resources/intune-deviceconfig-applistitem.md)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appleAppListItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appleAppListItem",
  "name": "String",
  "publisher": "String",
  "appStoreUrl": "String",
  "appId": "String"
}
```