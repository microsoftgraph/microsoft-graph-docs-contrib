---
title: "vpnTrafficRuleAppType enum type"
description: "Indicates the type of app that a VPN traffic rule is associated with."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnTrafficRuleAppType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of app that a VPN traffic rule is associated with.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|The traffic rule is not associated with an app.|
|desktop|1|The traffic rule is associated with a desktop app.|
|universal|2|The traffic rule is associated with a Universal app.|