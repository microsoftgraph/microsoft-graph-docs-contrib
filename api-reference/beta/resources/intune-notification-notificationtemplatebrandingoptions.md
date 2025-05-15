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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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