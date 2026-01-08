---
title: "androidDeviceOwnerGlobalProxyDirect resource type"
description: "Android Device Owner Global Proxy Direct."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerGlobalProxyDirect resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner Global Proxy Direct.


Inherits from [androidDeviceOwnerGlobalProxy](../resources/intune-deviceconfig-androiddeviceownerglobalproxy.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|host|String|The host name|
|port|Int32|The port|
|excludedHosts|String collection|The excluded hosts|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerGlobalProxyDirect"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerGlobalProxyDirect",
  "host": "String",
  "port": 1024,
  "excludedHosts": [
    "String"
  ]
}
```