---
title: "windowsZtdnsSecureDnsServerDnsOverTlsConfiguration resource type"
description: "Configuration settings for DNS over TLS (DoT) service"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsZtdnsSecureDnsServerDnsOverTlsConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configuration settings for DNS over TLS (DoT) service

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateSubjectName|String|Expected subject name or subject alternative name in the server's TLS certificate|
|tlsPort|Int32|Port for DoT queries (0-65535). Valid values 0 to 65535|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServerDnsOverTlsConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsZtdnsSecureDnsServerDnsOverTlsConfiguration",
  "certificateSubjectName": "String",
  "tlsPort": 1024
}
```