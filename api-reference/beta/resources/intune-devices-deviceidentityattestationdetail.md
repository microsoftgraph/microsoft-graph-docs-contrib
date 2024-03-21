---
title: "deviceIdentityAttestationDetail resource type"
description: "Indicates the attestation status of the managed device"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# deviceIdentityAttestationDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the attestation status of the managed device

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceIdentityAttestationStatus|[deviceIdentityAttestationStatus](../resources/intune-devices-deviceidentityattestationstatus.md)|Indicates the attestation status of the managed device. And in which way. Default: Unknown. This property is read-only. Possible values are: `unknown`, `trusted`, `unTrusted`, `notSupported`, `incompleteData`, `unknownFutureValue`.|

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
