---
title: "importedDeviceIdentityType enum type"
description: "Intune Enrollment Importeddeviceidentitytype Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# importedDeviceIdentityType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown value of importedDeviceIdentityType.|
|imei|1|Device Identity is of type imei.|
|serialNumber|2|Device Identity is of type serial number.|
|manufacturerModelSerial|3|Device Identity is of type manufacturer + model + serial number semi-colon delimited tuple with enforced order.|