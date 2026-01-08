---
title: "azureAttestationSettingStatus enum type"
description: "A list of possible Azure Attestation states for a device. Azure Attestation setting status is determined by report sent from Microsoft Azure Attestation service. Only Windows 11 devices will have values "enabled" or "disabled". Windows 10 devices will have value "notApplicable"."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# azureAttestationSettingStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible Azure Attestation states for a device. Azure Attestation setting status is determined by report sent from Microsoft Azure Attestation service. Only Windows 11 devices will have values "enabled" or "disabled". Windows 10 devices will have value "notApplicable".

## Members
|Member|Value|Description|
|:---|:---|:---|
|notApplicable|0|Indicates that the device is not a Windows 11 device.|
|enabled|1|Indicates that the device has the Azure attestation setting enabled.|
|disabled|2|Indicates that the device has the Azure attestation setting disabled.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|