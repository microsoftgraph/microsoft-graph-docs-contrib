---
title: "androidWiFiSecurityType enum type"
description: "The possible security types for Android Wi-Fi profiles. Default value 'Open', indicates no authentication required for the network. The security protocols supported are WEP, WPA and WPA2. 'WpaEnterprise' and 'Wpa2Enterprise' options are available for Enterprise Wi-Fi profiles. 'Wep' and 'WpaPersonal' (supports WPA and WPA2) options are available for Basic Wi-Fi profiles."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidWiFiSecurityType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The possible security types for Android Wi-Fi profiles. Default value 'Open', indicates no authentication required for the network. The security protocols supported are WEP, WPA and WPA2. 'WpaEnterprise' and 'Wpa2Enterprise' options are available for Enterprise Wi-Fi profiles. 'Wep' and 'WpaPersonal' (supports WPA and WPA2) options are available for Basic Wi-Fi profiles.

## Members
|Member|Value|Description|
|:---|:---|:---|
|open|0|Default. Indicates Android Wifi Security Type is set to "Open" i.e. no authentication is required. (No Authentication).|
|wpaEnterprise|1|Indicates Android Wifi Security Type is set to WPA encryption. Must use AndroidWorkProfileEnterpriseWifiConfiguration type to configure enterprise options.|
|wpa2Enterprise|2|Indicates Android Wifi Security Type is set to WPA2 encryption. Must use AndroidWorkProfileEnterpriseWifiConfiguration type to configure enterprise options.|
|wep|3|Indicates Android Wifi Security Type is set to WEP encryption. This restricts the preSharedKey to a valid passphrase (5 or 13 characters) or a valid HEX key (10 or 26 hexidecimal characters). Use AndroidWorkProfileWifiConfiguration to configure basic Wi-Fi options.|
|wpaPersonal|4| Indicates Android Wifi Security Type is set to WPA encryption. This restricts the preSharedKey to a string between 8 and 64 characters long. Use AndroidWorkProfileWifiConfiguration to configure basic Wi-Fi options.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|