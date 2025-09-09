---
title: "windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration resource type"
description: "Configuration settings for DNS over HTTPS (DoH) service"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configuration settings for DNS over HTTPS (DoH) service

## Properties
|Property|Type|Description|
|:---|:---|:---|
|httpsPort|Int32|Port for DoH queries (0-65535). Valid values 0 to 65535|
|queryUrl|String|URL template for DoH queries|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration",
  "httpsPort": 1024,
  "queryUrl": "String"
}
```