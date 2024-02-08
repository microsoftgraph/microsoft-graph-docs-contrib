---
title: "resultantAppState enum type"
description: "A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# resultantAppState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible states for application status on an individual device. When devices contact the Intune service and find targeted application enforcement intent, the status of the enforcement is recorded and becomes accessible in the Graph API. Since the application status is identified during device interaction with the Intune service, status records do not immediately appear upon application group assignment; it is created only after the assignment is evaluated in the service and devices start receiving the policy during check-ins.

## Members
|Member|Value|Description|
|:---|:---|:---|
|installed|1|The application is installed with no errors.|
|failed|2|The application failed to install.|
|notInstalled|3|The application is not installed.|
|uninstallFailed|4|The application failed to uninstall.|
|pendingInstall|5|The installation of the application is in progress.|
|unknown|99|The status of the application is unknown.|
|notApplicable|-1|The application is not applicable.|
