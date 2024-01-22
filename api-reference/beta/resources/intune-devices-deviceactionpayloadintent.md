---
title: "deviceActionPayloadIntent enum type"
description: "A list of possible intent values on the policy or app when executing this action on the managed device. For example, if the policy or app is intended to be removed on the managed device, then the intent value is remove, and if the policy or app already intended to remove through previous actions and is now intended to be restored on the managed device, then the intent value is restore"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceActionPayloadIntent enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible intent values on the policy or app when executing this action on the managed device. For example, if the policy or app is intended to be removed on the managed device, then the intent value is remove, and if the policy or app already intended to remove through previous actions and is now intended to be restored on the managed device, then the intent value is restore

## Members
|Member|Value|Description|
|:---|:---|:---|
|remove|0|Default. Indicates that the deployed policy or app is intended to be removed on the managed device|
|restore|1|Indicates that the policy or app already intended to remove through previous actions and is now intended to be restored on the managed device|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use|
