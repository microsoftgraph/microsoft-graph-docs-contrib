---
title: "androidDeviceOwnerDelegatedScopeAppSetting resource type"
description: "Represents one item in the list of managed apps with app details and its associated delegated scope(s)."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerDelegatedScopeAppSetting resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents one item in the list of managed apps with app details and its associated delegated scope(s).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appDetail|[appListItem](../resources/intune-deviceconfig-applistitem.md)|Information about the app like Name, AppStoreUrl, Publisher and AppId|
|appScopes|[androidDeviceOwnerDelegatedAppScopeType](../resources/intune-deviceconfig-androiddeviceownerdelegatedappscopetype.md) collection|List of scopes an app has been assigned.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerDelegatedScopeAppSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerDelegatedScopeAppSetting",
  "appDetail": {
    "@odata.type": "microsoft.graph.appListItem",
    "name": "String",
    "publisher": "String",
    "appStoreUrl": "String",
    "appId": "String"
  },
  "appScopes": [
    "String"
  ]
}
```