---
title: "windowsManagedAppClipboardSharingLevel enum type"
description: "Represents the level to which the device's clipboard may be shared between apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsManagedAppClipboardSharingLevel enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the level to which the device's clipboard may be shared between apps

## Members
|Member|Value|Description|
|:---|:---|:---|
|anyDestinationAnySource|0|Org users can paste data from and cut/copy data to any account, document, location or application.|
|none|1|Org users cannot cut, copy or paste data to or from external accounts, documents, locations or applications from or into the org context.|
|orgDestinationAnySource|2|Indicates organization users can cut/copy/paste data into the org context from any account, document, location or application.|
|orgDestinationOrgSource|3|Indicates organization users can cut/copy/paste data into the org context from org accounts, org documents, org locations or org applications.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|