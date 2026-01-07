---
title: "deviceIdentityAttestationDetail resource type"
description: "Indicates the attestation status of the managed device"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceIdentityAttestationDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the attestation status of the managed device

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceIdentityAttestationStatus|[deviceIdentityAttestationStatus](../resources/intune-devices-deviceidentityattestationstatus.md)|Indicates the attestation status of the managed device. And in which way. Default: Unknown. This property is read-only. The possible values are: `unknown`, `trusted`, `unTrusted`, `notSupported`, `incompleteData`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceIdentityAttestationDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceIdentityAttestationDetail",
  "deviceIdentityAttestationStatus": "String"
}
```