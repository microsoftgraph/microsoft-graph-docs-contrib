---
title: "connectorName enum type"
description: "Connectors name for connector status"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# connectorName enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Connectors name for connector status

## Members
|Member|Value|Description|
|:---|:---|:---|
|applePushNotificationServiceExpirationDateTime|0|Indicates the expiration date/time for the Apple MDM Push Certificate.|
|vppTokenExpirationDateTime|1|Indicates the expiration date/time for Vpp Token.|
|vppTokenLastSyncDateTime|2|Indicate the last sync data/time that the Vpp Token performed a sync.|
|windowsAutopilotLastSyncDateTime|3|Indicate the last sync date/time that the Windows Autopilot performed a sync.|
|windowsStoreForBusinessLastSyncDateTime|4|Indicates the last sync date/time that the Windows Store for Business performed a sync.|
|jamfLastSyncDateTime|5|Indicates the last sync date/time that the JAMF connector performed a sync.|
|ndesConnectorLastConnectionDateTime|6|Indicates the last sync date/time that the NDES connector performed a sync.|
|appleDepExpirationDateTime|7|Indicates the expiration date/time for the Apple Enrollment Program token.|
|appleDepLastSyncDateTime|8|Indicates the last sync date/time that the Apple Enrollment Program token performed a sync.|
|onPremConnectorLastSyncDateTime|9|Indicates the last sync date/time that the Exchange ActiveSync connector performed a sync.|
|googlePlayAppLastSyncDateTime|10|Indicates the last sync date/time that the Google Play App performed a sync.|
|googlePlayConnectorLastModifiedDateTime|11|Indicates the last modified date / time that the Google Play connector was updated.|
|windowsDefenderATPConnectorLastHeartbeatDateTime|12|Indicates the last heartbeat date/time that the Windows Defender ATP connector was contacted.|
|mobileThreatDefenceConnectorLastHeartbeatDateTime|13|Indicates the last heartbeat date/time that the Mobile Threat Defence connector was contacted.|
|chromebookLastDirectorySyncDateTime|14|Indicates the last sync date/time that the Chrombook Last Directory performed a sync.|
|futureValue|15|Future use|