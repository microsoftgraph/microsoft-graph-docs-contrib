---
title: "privilegeManagementEndUserType enum type"
description: "The type of user account on Windows that was used to performed the elevation."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# privilegeManagementEndUserType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type of user account on Windows that was used to performed the elevation.

## Members
|Member|Value|Description|
|:---|:---|:---|
|undetermined|0|Default. Unable to determine the login type of the user.|
|azureAd|1|The user who performed the elevation logged in using an Azure Active Directory (Azure AD) account.|
|hybrid|2|The user who performed the elevation logged in using Hybrid Azure AD joined account.|
|local|3|The user who performed the elevation logged in using a Windows local account.|
|unknownFutureValue|4|Evolvable emuneration sentinel value. Do not use.|