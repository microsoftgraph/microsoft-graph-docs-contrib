---
title: "managedDeviceResourceQueryAttributeType enum type"
description: "The ManagedDeviceResourceQueryAttributeType enum represents the type of a query column attribute. Possible values correspond to the supported KQL scalar data types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedDeviceResourceQueryAttributeType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The ManagedDeviceResourceQueryAttributeType enum represents the type of a query column attribute. Possible values correspond to the supported KQL scalar data types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|bool|0|Default. Indicates the query attribute type is bool. The value is true (1) or false (0).|
|datetime|1|Indicates the query attribute type is datetime. The value is an instant in time, typically expressed as a date and time of day.|
|decimal|2|Indicates the query attribute type is decimal. The value is a 128-bit wide, decimal number.|
|guid|3|Indicates the query attribute type is guid. The value is a 128-bit globally unique value.|
|int|4|Indicates the query attribute type is int. The value is a signed, 32-bit wide, integer.|
|long|5|Indicates the query attribute type is long. The value is a signed, 64-bit wide, integer.|
|real|6|Indicates the query attribute type is real. The value is a 64-bit wide, double-precision, floating-point number.|
|string|7|Indicates the query attribute type is string. The value is a sequence of zero or more Unicode characters.|
|timespan|8|Indicates the query attribute type is timespan. The value is a time interval.|
|anchor|9|Indicates the query attribute type is anchor. The value is a property bag of other scalar data types, to represent an anchor management object such as Device that is linkable.|
|enum|10|Indicates the query attribute type is enum. The value is an enum value. Ex: "NONCOMPLIANT"|
|unknownFutureValue|11|Evolvable enumeration sentinel value. Do not use.|
