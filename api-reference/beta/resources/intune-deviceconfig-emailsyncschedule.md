---
title: "emailSyncSchedule enum type"
description: "Possible values for email sync schedule."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# emailSyncSchedule enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for email sync schedule.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|asMessagesArrive|1|Sync as messages arrive.|
|manual|2|Sync manually.|
|fifteenMinutes|3|Sync every fifteen minutes.|
|thirtyMinutes|4|Sync every thirty minutes.|
|sixtyMinutes|5|Sync every sixty minutes.|
|basedOnMyUsage|6|Sync based on my usage.|