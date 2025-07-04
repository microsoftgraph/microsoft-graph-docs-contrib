---
title: "specifiedCaptiveNetworkPlugins resource type"
description: "Specifies all the Captive network plugins allowed during the IKEv2 AlwaysOn VPN connection"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# specifiedCaptiveNetworkPlugins resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies all the Captive network plugins allowed during the IKEv2 AlwaysOn VPN connection

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedBundleIdentifiers|String collection|Address of the IKEv2 server. Must be a FQDN, UserFQDN, network address, or ASN1DN|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.specifiedCaptiveNetworkPlugins"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.specifiedCaptiveNetworkPlugins",
  "allowedBundleIdentifiers": [
    "String"
  ]
}
```