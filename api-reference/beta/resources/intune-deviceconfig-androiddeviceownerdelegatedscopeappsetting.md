---
title: "androidDeviceOwnerDelegatedScopeAppSetting resource type"
description: "Represents one item in the list of managed apps with app details and its associated delegated scope(s)."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# androidDeviceOwnerDelegatedScopeAppSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
