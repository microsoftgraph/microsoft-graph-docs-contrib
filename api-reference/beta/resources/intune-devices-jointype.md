---
title: "joinType enum type"
description: "Device enrollment join type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# joinType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device enrollment join type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown enrollment join type.|
|azureADJoined|1|The device is joined by Azure AD.|
|azureADRegistered|2|The device is registered by Azure AD.|
|hybridAzureADJoined|3|The device is joined by hybrid Azure AD.|