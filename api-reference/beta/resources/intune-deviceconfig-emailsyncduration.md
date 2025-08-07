---
title: "emailSyncDuration enum type"
description: "Possible values for email sync duration."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# emailSyncDuration enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for email sync duration.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|oneDay|1|Sync one day of email.|
|threeDays|2|Sync three days of email.|
|oneWeek|3|Sync one week of email.|
|twoWeeks|4|Sync two weeks of email.|
|oneMonth|5|Sync one month of email.|
|unlimited|6|Sync an unlimited duration of email.|