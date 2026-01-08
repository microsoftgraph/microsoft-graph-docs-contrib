---
title: "windowsZtdnsSecureDnsServer resource type"
description: "Trusted DNS server configuration for Zero Trust DNS"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsZtdnsSecureDnsServer resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Trusted DNS server configuration for Zero Trust DNS

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name assigned to the trusted server entry|
|dnsOverHttpsConfiguration|[windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration](../resources/intune-deviceconfig-windowsztdnssecurednsserverdnsoverhttpsconfiguration.md)|DNS over HTTPS (DoH) configuration settings for the secure DNS server|
|dnsOverTlsConfiguration|[windowsZtdnsSecureDnsServerDnsOverTlsConfiguration](../resources/intune-deviceconfig-windowsztdnssecurednsserverdnsovertlsconfiguration.md)|DNS over TLS (DoT) configuration settings for the secure DNS server|
|ipAddress|String|IP address of a trusted DNS server for ZTDNS (IPv4 or IPv6)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsZtdnsSecureDnsServer",
  "displayName": "String",
  "dnsOverHttpsConfiguration": {
    "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServerDnsOverHttpsConfiguration",
    "httpsPort": 1024,
    "queryUrl": "String"
  },
  "dnsOverTlsConfiguration": {
    "@odata.type": "microsoft.graph.windowsZtdnsSecureDnsServerDnsOverTlsConfiguration",
    "certificateSubjectName": "String",
    "tlsPort": 1024
  },
  "ipAddress": "String"
}
```