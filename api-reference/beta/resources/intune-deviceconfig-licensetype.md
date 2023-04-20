---
title: "licenseType enum type"
description: "Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid ."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# licenseType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates whether tenant has a valid Intune Endpoint Privilege Management license. Possible value are : 0 - notPaid, 1 - paid, 2 - trial. See LicenseType enum for more details. Default notPaid .

## Members
|Member|Value|Description|
|:---|:---|:---|
|notPaid|0|Indicates the tenant has neither trial or paid license.|
|paid|1|Indicates the tenant has paid Endpoint Privilege Management license.|
|trial|2|Indicates the tenant has trial Endpoint Privilege Management license.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
