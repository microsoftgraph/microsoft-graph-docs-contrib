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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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