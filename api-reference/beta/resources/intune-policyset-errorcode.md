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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|noError|0|Default Value to indicate no error.|
|unauthorized|1|The current user does not have access due to lack of RBAC permissions on the resource.|
|notFound|2|The current user does not have access due to lack of RBAC Scope Tags on the resource.|
|deleted|3|The resource has been deleted.|