---
title: "resultantAppState enum type"
description: "Not yet documented"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 04/01/2024
---

# resultantAppState enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Members
|Member|Value|Description|
|:---|:---|:---|
|installed|1|The application is installed with no errors|
|failed|2|The application failed to install.|
|notInstalled|3|The application is not installed.|
|uninstallFailed|4|The application failed to uninstall.|
|pendingInstall|5|The installation of the application is in progress.|
|unknown|99|The status of the application is unknown.|
|notApplicable|-1|The application is not applicable.|
