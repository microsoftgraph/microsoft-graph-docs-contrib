---
title: "deviceLocalCredential resource type"
description: "Represents device local credential of a device object in Azure Active Directory that is enabled with Local Admin PAssword Solution (LAPS).
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# deviceLocalCredential resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents deviceLocalCredential that contains the actual password for local admin account for a device object in Azure Active Directory.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountName|String| The name of the local admin account for which LAPS is enabled.|
|accountSid|String|The SID of the local admin account for which LAPS is enabled.|
|backupDateTime|DateTimeOffset|The date and time when the local credential for the local admin account was backed up to Azure Active Directory.|
|passwordBase64|String|The password for the local admin account that is backed up to Azure Active Directory and returned as a base 64 encoded value.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceLocalCredential",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLocalCredential",
  "accountName": "String"
  "accountSid": "String"
  "backupDateDateTime": "DateTimeOffset",
  "passwordBase64": "String"
}
```
