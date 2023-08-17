---
title: "enrollmentProfileForNonGmsTeamsDevice resource type"
description: "Enrollment Profile used to enroll Android Open Source Project Teams devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# enrollmentProfileForNonGmsTeamsDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enrollment Profile used to enroll Android Open Source Project Teams devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountId|String|Tenant GUID the enrollment profile belongs to.|
|profileId|String|Unique GUID for the enrollment profile.|
|tokenExpirationDateTime|DateTimeOffset|Date time the most recently created token will expire.|
|encryptedProvisioningPackageExtras|[encryptedProvisioningPackageExtras](../resources/intune-androidforwork-encryptedprovisioningpackageextras.md)|Encrypted base-64 string that contains the provisioning package extras|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enrollmentProfileForNonGmsTeamsDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enrollmentProfileForNonGmsTeamsDevice",
  "accountId": "String",
  "profileId": "String",
  "tokenExpirationDateTime": "String (timestamp)",
  "encryptedProvisioningPackageExtras": {
    "@odata.type": "microsoft.graph.encryptedProvisioningPackageExtras",
    "encryptedData": "binary",
    "encryptedSymmetricKey": "binary",
    "iv": "binary"
  }
}
```
