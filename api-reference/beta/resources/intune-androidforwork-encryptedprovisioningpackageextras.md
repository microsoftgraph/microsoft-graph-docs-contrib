---
title: "encryptedProvisioningPackageExtras resource type"
description: "Encrypted provisioning package extras for Teams devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# encryptedProvisioningPackageExtras resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Encrypted provisioning package extras for Teams devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|encryptedData|Binary|Data Encrypted with the symmetric key.|
|encryptedSymmetricKey|Binary|Symmetric Key used to encrypt the data returned. Encrypted with a public key.|
|iv|Binary|Initialization Vector used to encrypt the data returned.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.encryptedProvisioningPackageExtras"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.encryptedProvisioningPackageExtras",
  "encryptedData": "binary",
  "encryptedSymmetricKey": "binary",
  "iv": "binary"
}
```
