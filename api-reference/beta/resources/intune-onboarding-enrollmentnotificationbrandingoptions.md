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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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