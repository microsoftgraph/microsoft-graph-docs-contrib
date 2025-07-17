---
title: "iosNetworkUsageRule resource type"
description: "Network Usage Rules allow enterprises to specify how managed apps use networks, such as cellular data networks."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iosNetworkUsageRule resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Network Usage Rules allow enterprises to specify how managed apps use networks, such as cellular data networks.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managedApps|[appListItem](../resources/intune-deviceconfig-applistitem.md) collection|Information about the managed apps that this rule is going to apply to. This collection can contain a maximum of 500 elements.|
|cellularDataBlockWhenRoaming|Boolean|If set to true, corresponding managed apps will not be allowed to use cellular data when roaming.|
|cellularDataBlocked|Boolean|If set to true, corresponding managed apps will not be allowed to use cellular data at any time.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosNetworkUsageRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosNetworkUsageRule",
  "managedApps": [
    {
      "@odata.type": "microsoft.graph.appListItem",
      "name": "String",
      "publisher": "String",
      "appStoreUrl": "String",
      "appId": "String"
    }
  ],
  "cellularDataBlockWhenRoaming": true,
  "cellularDataBlocked": true
}
```