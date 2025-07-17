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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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