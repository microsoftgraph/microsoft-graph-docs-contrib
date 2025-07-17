---
title: "macOSSoftwareUpdateState enum type"
description: "MacOS Software Update State"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSSoftwareUpdateState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

MacOS Software Update State

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0|The software update successfully installed|
|downloading|1000|The software update is being downloaded|
|downloaded|1001|The software update has been downloaded|
|installing|1002|The software update is being installed|
|idle|1003|No action is being taken on this software update|
|available|1004|The software update is available on the device|
|scheduled|1005|The software update has been scheduled on the device|
|downloadFailed|2000|The software update download has failed|
|downloadInsufficientSpace|2001|There is not enough space to download the update|
|downloadInsufficientPower|2002|There is not enough power to download the update|
|downloadInsufficientNetwork|2003|There is insufficient network capacity to download the update|
|installInsufficientSpace|2004|There is not enough space to install the update|
|installInsufficientPower|2005|There is not enough power to install the update|
|installFailed|2006|Installation has failed for an unspecified reason|
|commandFailed|2007|The schedule update command has failed for an unspecified reason|