---
title: "managedAppPhoneNumberRedirectLevel enum type"
description: "The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppPhoneNumberRedirectLevel enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages.

## Members
|Member|Value|Description|
|:---|:---|:---|
|allApps|0|Sharing is allowed to all apps.|
|managedApps|1|Sharing is allowed to all managed apps.|
|customApp|2|Sharing is allowed to a custom app.|
|blocked|3|Sharing between apps is blocked.|