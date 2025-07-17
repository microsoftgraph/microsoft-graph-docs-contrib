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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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