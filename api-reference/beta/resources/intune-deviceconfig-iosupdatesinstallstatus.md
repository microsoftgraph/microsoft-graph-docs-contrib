---
title: "iosUpdatesInstallStatus enum type"
description: "Intune Deviceconfig Iosupdatesinstallstatus Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# iosUpdatesInstallStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0||
|available|1||
|idle|2||
|unknown|3||
|mdmClientCrashed|-2016336109||
|timeout|-2016333898||
|downloading|-2016330712||
|downloadFailed|-2016330711||
|downloadRequiresComputer|-2016330710||
|downloadInsufficientSpace|-2016330709||
|downloadInsufficientPower|-2016330708||
|downloadInsufficientNetwork|-2016330707||
|installing|-2016330706||
|installInsufficientSpace|-2016330705||
|installInsufficientPower|-2016330704||
|installPhoneCallInProgress|-2016330703||
|installFailed|-2016330702||
|notSupportedOperation|-2016330701||
|sharedDeviceUserLoggedInError|-2016330699||
|updateError|-2016330697||
|deviceOsHigherThanDesiredOsVersion|-2016330696||
|updateScanFailed|-2016324062||