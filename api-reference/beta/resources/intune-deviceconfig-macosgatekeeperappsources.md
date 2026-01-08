---
title: "macOSGatekeeperAppSources enum type"
description: "App source options for macOS Gatekeeper."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSGatekeeperAppSources enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App source options for macOS Gatekeeper.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|macAppStore|1|Only apps from the Mac AppStore can be run.|
|macAppStoreAndIdentifiedDevelopers|2|Only apps from the Mac AppStore and identified developers can be run.|
|anywhere|3|Apps from anywhere can be run.|