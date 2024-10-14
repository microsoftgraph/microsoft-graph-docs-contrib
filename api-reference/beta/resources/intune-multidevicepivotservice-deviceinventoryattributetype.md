---
title: "deviceInventoryAttributeType enum type"
description: "Represents the type of a device inventory attribute. Possible values correspond to the supported KQL scalar data types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# deviceInventoryAttributeType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the type of a device inventory attribute. Possible values correspond to the supported KQL scalar data types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|bool|0|Indicates the device inventory attribute type is bool. The value is true (1) or false (0).|
|datetime|1|Indicates the device inventory attribute type is datetime. The value is an instant in time, typically expressed as a date and time of day.|
|decimal|2|Indicates the device inventory attribute type is decimal. The value is a 128-bit wide, decimal number.|
|dynamic|3|Indicates the device inventory attribute type is dynamic. The value is an array, a property bag, or a value of any of the other scalar data types.|
|guid|4|Indicates the device inventory attribute type is guid. The value is a 128-bit globally unique value.|
|int|5|Indicates the device inventory attribute type is int. The value is a signed, 32-bit wide, integer.|
|long|6|Indicates the device inventory attribute type is long. The value is a signed, 64-bit wide, integer.|
|real|7|Indicates the device inventory attribute type is real. The value is a 64-bit wide, double-precision, floating-point number.|
|string|8|Indicates the device inventory attribute type is string. The value is a sequence of zero or more Unicode characters.|
|timespan|9|Indicates the device inventory attribute type is timespan. The value is a time interval.|
|unknownFutureValue|10|Evolvable enumeration sentinel value. Do not use.|
