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
