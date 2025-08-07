---
title: "errorCode enum type"
description: "Intune Policyset Errorcode Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# errorCode enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|noError|0|Default Value to indicate no error.|
|unauthorized|1|The current user does not have access due to lack of RBAC permissions on the resource.|
|notFound|2|The current user does not have access due to lack of RBAC Scope Tags on the resource.|
|deleted|3|The resource has been deleted.|