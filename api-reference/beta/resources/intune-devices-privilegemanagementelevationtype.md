---
title: "privilegeManagementElevationType enum type"
description: "Indicates the type of elevation occured"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# privilegeManagementElevationType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of elevation occured

## Members
|Member|Value|Description|
|:---|:---|:---|
|undetermined|0|Default. If the type was unknown on the client for some reasons.|
|unmanagedElevation|1|The elevation was done without any use of endpoint privilege management. For example: the administrator on a client machine elevated an application with their admin right.|
|zeroTouchElevation|2|The elevation was done using the endpoint privilege management zero touch elevation policy.|
|userConfirmedElevation|3|The elevation was done using the endpoint privilege management user confirmed elevation policy.|
|supportApprovedElevation|4|The elevation was done using the endpoint privilege management support approved elevation policy.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|