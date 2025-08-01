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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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