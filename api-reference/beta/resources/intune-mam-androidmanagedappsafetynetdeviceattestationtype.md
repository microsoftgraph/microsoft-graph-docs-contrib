---
title: "androidManagedAppSafetyNetDeviceAttestationType enum type"
description: "An admin enforced Android SafetyNet Device Attestation requirement on a managed app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidManagedAppSafetyNetDeviceAttestationType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An admin enforced Android SafetyNet Device Attestation requirement on a managed app.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|no requirement set|
|basicIntegrity|1|require that Android device passes SafetyNet Basic Integrity validation|
|basicIntegrityAndDeviceCertification|2|require that Android device passes SafetyNet Basic Integrity and Device Certification validations|