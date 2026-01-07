---
title: "remoteAssistanceOnboardingStatus enum type"
description: "The current TeamViewer connector status"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# remoteAssistanceOnboardingStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The current TeamViewer connector status

## Members
|Member|Value|Description|
|:---|:---|:---|
|notOnboarded|0|The status reported when there is no active TeamViewer connector configured or active|
|onboarding|1|The status reported when the system has initiated a TeamViewer connection, but the service has not yet completed the confirmation of a connector|
|onboarded|2|The status reported when the system has successfully exchanged account information with TeamViewer and can now initiate remote assistance sessions with clients|