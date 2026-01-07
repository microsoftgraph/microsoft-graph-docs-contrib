---
title: "vppTokenState enum type"
description: "Possible states associated with an Apple Volume Purchase Program token."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vppTokenState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible states associated with an Apple Volume Purchase Program token.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default state.|
|valid|1|Token is valid.|
|expired|2|Token is expired.|
|invalid|3|Token is invalid.|
|assignedToExternalMDM|4|Token is managed by another MDM Service.|
|duplicateLocationId|5|Token is associated with the same location as another token on the account.|