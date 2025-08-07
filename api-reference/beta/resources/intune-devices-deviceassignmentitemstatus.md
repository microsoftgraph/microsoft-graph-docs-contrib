---
title: "deviceAssignmentItemStatus enum type"
description: "A list of possible assignment item action status values for the application or configuration regarding their executed action on the managed device. For example, a configuration included in the deviceAssignmentItems list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAssignmentItemStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible assignment item action status values for the application or configuration regarding their executed action on the managed device. For example, a configuration included in the deviceAssignmentItems list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process

## Members
|Member|Value|Description|
|:---|:---|:---|
|initiated|0|Default. Indicates that the device assignment action to remove or restore an application or a configuration is 'initiated' on the managed device|
|inProgress|1|Indicates that the device assignment action to remove or restore an application or a configuration is 'in progress' on the managed device|
|removed|2|Indicates that the application or configuration has been successfully removed on the managed device|
|error|3|Indicates that the application or configuration has failed to be removed or restored on the managed device. The error may be retriable depending on the intent action message and error code|
|succeeded|4|Indicates that the application or configuration has been successfully restored on the managed device|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use|