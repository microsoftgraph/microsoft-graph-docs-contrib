---
title: "notificationTemplateBrandingOptions enum type"
description: "Branding Options for the Message Template. Branding is defined in the Intune Admin Console."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# notificationTemplateBrandingOptions enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Branding Options for the Message Template. Branding is defined in the Intune Admin Console.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Indicates that no branding options are set in the message template.|
|includeCompanyLogo|1|Indicates to include company logo in the message template.|
|includeCompanyName|2|Indicates to include company name in the message template.|
|includeContactInformation|4|Indicates to include contact information in the message template.|
|includeCompanyPortalLink|8|Indicates to include company portal website link in the message template.|
|includeDeviceDetails|16|Indicates to include device details in the message template.|
|unknownFutureValue|32|Evolvable enumeration sentinel value. Do not use.|