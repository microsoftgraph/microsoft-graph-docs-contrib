---
title: "groupPolicyUploadedDefinitionFileStatus enum type"
description: "Type of Group Policy uploaded definition file status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# groupPolicyUploadedDefinitionFileStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of Group Policy uploaded definition file status.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Group Policy uploaded definition file invalid upload status.|
|uploadInProgress|1|Group Policy uploaded definition file upload in progress.|
|available|2|Group Policy uploaded definition file available.|
|assigned|3|Group Policy uploaded definition file assigned to policy.|
|removalInProgress|4|Group Policy uploaded definition file removal in progress.|
|uploadFailed|5|Group Policy uploaded definition file upload failed.|
|removalFailed|6|Group Policy uploaded definition file removal failed.|