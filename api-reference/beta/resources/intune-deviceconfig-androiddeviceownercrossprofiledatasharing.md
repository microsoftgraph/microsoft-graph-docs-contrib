---
title: "androidDeviceOwnerCrossProfileDataSharing enum type"
description: "An enum representing possible values for cross profile data sharing."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerCrossProfileDataSharing enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for cross profile data sharing.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value defaults to CROSS_PROFILE_DATA_SHARING_UNSPECIFIED.|
|crossProfileDataSharingBlocked|1|Data cannot be shared from both the personal profile to work profile and the work profile to the personal profile.|
|dataSharingFromWorkToPersonalBlocked|2|Prevents users from sharing data from the work profile to apps in the personal profile. Personal data can be shared with work apps.|
|crossProfileDataSharingAllowed|3|Data from either profile can be shared with the other profile.|
|unkownFutureValue|4|Unknown future value (reserved, not used right now)|