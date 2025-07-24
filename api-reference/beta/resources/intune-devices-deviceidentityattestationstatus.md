---
title: "deviceIdentityAttestationStatus enum type"
description: "Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceIdentityAttestationStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Set to unknown if attestation has not yet been calculated|
|trusted|1|Indicates that the Device attestation is supported on the device, it was attempted on the device and the attestation has passed. The device is trusted.|
|unTrusted|2|Indicates that the Device attestation is supported on the device, it was attempted on the device and the attestation has failed. The device is untrusted|
|notSupported|3|Indicates that the device does not support Attestation. This could be because of missing hardware or software support.|
|incompleteData|4|Indicates that the device did not provide with the data that were required to perform attestation.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|