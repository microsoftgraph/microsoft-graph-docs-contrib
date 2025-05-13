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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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