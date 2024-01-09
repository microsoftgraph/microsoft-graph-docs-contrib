---
title: "privilegeManagementEndUserType enum type"
description: "The type of user account on Windows that was used to performed the elevation."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# privilegeManagementEndUserType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
