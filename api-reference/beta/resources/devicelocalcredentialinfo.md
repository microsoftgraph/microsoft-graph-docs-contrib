---
title: "deviceLocalCredentialInfo resource type"
description: "Local Admin Password Solution (LAPS) password recovery resource"
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# deviceLocalCredentialInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents deviceLocalCredentials including metadata and the actual password for local admin account enabled using Local Admin Password Solution (LAPS).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceLocationCredentials](../api/laps-devicelocalcredentails-list.md)|[deviceLocalCredentials](../resources/devicelocalcedentials.md) collection|Get a list of the [deviceLocalCredentials](../resources/devicelocalcredentials.md) objects and their properties.|
|[Get deviceLocalCredentials](../api/laps-devicelocalcredentails-get.md)|[deviceLocalCredentials](../resources/devicelocalcedentials.md)|Retrieve the properties and relationships of a [deviceLocalCredentials](../resources/devicelocalcredentials.md) object.|

> **Note**: Only some roles have the permissions to call these APIs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| ID of the device that the local credentials are associated with|
|deviceName|String|Display name of the device that the local credentials are associated with|
|lastBackupDateTime|DateTimeOffset|The date and time when the local credential was backed up to Azure Active Directory.|
|refreshDateTime|DateTimeOffset|The date and time when the local credential will be refreshed and backed up to Azure Active Directory.|
|credentials|[deviceLocalCredential](../resources/devicelocalcredential.md) collection|The credentials of the device local admin account backed up to Azure Active Directory.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceLocalCredentialInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceLocalCredentialInfo",
  "id": "String (identifier)",
  "deviceName": "TString"
  "lastBackupDateDateTime": "DateTimeOffset",
  "refreshDateDateTime": "DateTimeOffset",
  "credentials": {
    "@odata.type": "microsoft.graph.deviceLocalCredential"
    }
}
```

