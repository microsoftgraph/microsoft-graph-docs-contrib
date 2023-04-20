---
title: "deviceLocalCredentialInfo resource type"
description: "Represents local administrator credential information for all device objects in Azure Active Directory that are enabled with Local Admin Password Solution (LAPS)."
author: "sandeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# deviceLocalCredentialInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents local administrator credential information for all device objects in Azure Active Directory that are enabled with Local Admin Password Solution (LAPS).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceLocationCredentialInfo](../api/devicelocalcredentialinfo-list.md)|[deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) collection|Get a list of the [deviceLocalCredentials](../resources/devicelocalcredential.md) objects and their properties.|
|[Get deviceLocalCredentialInfo](../api/devicelocalcredentialinfo-get.md)|[deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md)|Retrieve the properties and relationships of a [deviceLocalCredentialInfo](../resources/devicelocalcredentialinfo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|credentials|[deviceLocalCredential](../resources/devicelocalcredential.md) collection|The credentials of the device's local administrator account backed up to Azure Active Directory.|
|id|String| ID of the device that the local credentials are associated with Key. This is same as **deviceId** in the [device](device.md) object.|
|deviceName|String|Display name of the device that the local credentials are associated with.|
|lastBackupDateTime|DateTimeOffset|When the local administrator account credential was backed up to Azure Active Directory.|
|refreshDateTime|DateTimeOffset|When the local administrator account credential will be refreshed and backed up to Azure Active Directory.|


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
  "credentials": [
    {
      "@odata.type": "microsoft.graph.deviceLocalCredential"
    }
  ],
  "deviceName": "String",
  "lastBackupDateTime": "String (timestamp)",
  "refreshDateTime": "String (timestamp)"
}
```
