---
title: "deviceActionPayloadStatus enum type"
description: "A list of possible status values for the policy or app regarding their executed action on the managed device. For example, a policy included in the deviceActionPayloads list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceActionPayloadStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible status values for the policy or app regarding their executed action on the managed device. For example, a policy included in the deviceActionPayloads list has just been executed the action. Its status starts with inProgress until it's successfully removed to reflect as removed status or failed to be removed to reflect as error status on the managed device. Similar status change happens for restoration process

## Members
|Member|Value|Description|
|:---|:---|:---|
|inProgress|0|Default. Indicates that the policy or app is removing or restoring in progress on the managed device|
|removed|1|Indicates that the policy or app has been successfully removed on the managed device|
|error|2|Indicates that the policy or app has failed to be removed or restored on the managed device. The error may be retriable depending on the detail and error code|
|succeeded|3|Indicates that the policy or app has been successfully restored on the managed device|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use|
