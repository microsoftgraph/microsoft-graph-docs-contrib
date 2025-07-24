---
title: "managedAppNotificationRestriction enum type"
description: "Restrict managed app notification"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppNotificationRestriction enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Restrict managed app notification

## Members
|Member|Value|Description|
|:---|:---|:---|
|allow|0|Share all notifications.|
|blockOrganizationalData|1|Do not share Orgnizational data in notifications.|
|block|2|Do not share notifications.|