---
title: "deviceLocalCredentialInfo resource type"
description: "Represents local administrator credential information for all device objects in Microsoft Entra ID that are enabled with Local Admin Password Solution (LAPS)."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# deviceLocalCredentialInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents local administrator credential information for all device objects in Microsoft Entra ID that are enabled with Local Admin Password Solution (LAPS).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/directory-list-devicelocalcredentials.md)|[deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) collection|Get a list of the [deviceLocalCredentials](../resources/devicelocalcredential.md) objects and their properties.|
|[Get](../api/devicelocalcredentialinfo-get.md)|[deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md)|Retrieve the properties and relationships of a [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|credentials|[deviceLocalCredential](../resources/devicelocalcredential.md) collection|The credentials of the device's local administrator account backed up to Azure Active Directory.|
|deviceName|String|Display name of the device that the local credentials are associated with.|
|id|String| ID of the device that the local credentials are associated with Key. This is same as **deviceId** in the [device](device.md) object.|
|lastBackupDateTime|DateTimeOffset|When the local administrator account credential was backed up to Microsoft Entra ID.|
|refreshDateTime|DateTimeOffset|When the local administrator account credential will be refreshed and backed up to Microsoft Entra ID.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "deviceName": "String",
  "lastBackupDateTime": "String (timestamp)",
  "refreshDateTime": "String (timestamp)",
  "credentials": [
    {
      "@odata.type": "microsoft.graph.deviceLocalCredential"
    }
  ]
}
```
