---
title: "tunnelConfigurationIKEv2Custom resource type"
description: "Specifies custom connectivity settings such as protocol, IPSec policy, and presharked key for establishing connectivity."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# tunnelConfigurationIKEv2Custom resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies connectivity settings such as protocol, IPSec policy, and presharked key for establishing connectivity.

Inherits from [microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dhGroup|microsoft.graph.networkaccess.dhGroup|Specifies the DH group identifier for IPSec SA negotiation. The possible values are: `dhGroup14`, `dhGroup24`, `dhGroup2048`, `ecp256`, `ecp384`.|
|ikeEncryption|microsoft.graph.networkaccess.ikeEncryption|Specifies the IKE encryption protocol. The possible values are: `aes128`, `aes192`, `aes256`, `gcmAes128`, `gcmAes256`.|
|ikeIntegrity|microsoft.graph.networkaccess.ikeIntegrity|Specifies the integration properties of the IKE protocol. The possible values are: `sha256`, `sha384`, `gcmAes128`, `gcmAes256`.|
|ipSecEncryption|microsoft.graph.networkaccess.ipSecEncryption|Specifies the encryption protocol used for the IPSec tunnel. The possible values are: `none`, `gcmAes128`, `gcmAes192`, `gcmAes256`.|
|ipSecIntegrity|microsoft.graph.networkaccess.ipSecIntegrity|Specifies the integrity properties of the IPSec protocol. The possible values are: `gcmAes128`, `gcmAes192`, `gcmAes256`, `sha256`.|
|pfsGroup|microsoft.graph.networkaccess.pfsGroup|Specifies the Phase 2 DH group identifier for IPSec SA negotiation. The possible values are: `none`, `pfs1`, `pfs2`, `pfs14`, `pfs24`, `pfs2048`, `pfsmm`, `ecp256`, `ecp384`.|
|preSharedKey|String|A key to establish secure connection between the link and VPN tunnel on the edge. Inherited from [microsoft.graph.networkaccess.tunnelConfiguration](../resources/networkaccess-tunnelconfiguration.md).|
|saLifeTimeSeconds|Int64|a standard specifiying Security Association lifetime with recommended values from an RFC standard.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tunnelConfigurationIKEv2Custom"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tunnelConfigurationIKEv2Custom",
  "preSharedKey": "String",
  "saLifeTimeSeconds": "Integer",
  "ipSecEncryption": "String",
  "ipSecIntegrity": "String",
  "ikeEncryption": "String",
  "ikeIntegrity": "String",
  "dhGroup": "String",
  "pfsGroup": "String"
}
```

