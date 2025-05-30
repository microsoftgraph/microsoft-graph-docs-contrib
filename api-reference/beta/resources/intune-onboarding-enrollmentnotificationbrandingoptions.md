---
title: "enrollmentNotificationBrandingOptions enum type"
description: "Branding Options for the Message Template. Branding is defined in the Intune Admin Console."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# enrollmentNotificationBrandingOptions enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Branding Options for the Message Template. Branding is defined in the Intune Admin Console.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Indicates that the template has no branding.|
|includeCompanyLogo|1|Indicates that the Company Logo is included in the notification.|
|includeCompanyName|2|Indicates that the Company Name is included in the notification.|
|includeContactInformation|4|Indicates that the Contact Information is included in the notification.|
|includeCompanyPortalLink|8|Indicates that the Company Portal Link is included in the notification.|
|includeDeviceDetails|16|Indicates that the DeviceDetails is included in the notification.|
|unknownFutureValue|32|unknownFutureValue for evolvable enums pattern.|