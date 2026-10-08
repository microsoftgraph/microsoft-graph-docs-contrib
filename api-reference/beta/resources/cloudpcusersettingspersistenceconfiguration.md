---
title: "cloudPcUserSettingsPersistenceConfiguration resource type"
description: "Indicates the user settings persistence configuration when you create Cloud PCs for this provisioning policy."
author: "WenbinHuang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/27/2025
---

# cloudPcUserSettingsPersistenceConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the user settings persistence configuration when you create Cloud PCs for this [provisioning policy](../resources/cloudpcprovisioningpolicy.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|userSettingsPersistenceEnabled|Boolean|Indicates whether user application settings are persisted between Cloud PC sessions. The default value is `false`. When `true`, user settings persistence is enabled, and Windows 365 automatically saves any user-specific application data in a central cloud storage location. Anytime the user connects to a Cloud PC within this provisioning policy, Windows 365 reconnects the user to that persisted storage. When `false`, this feature isn't used. The persistent storage can only be accessed by Cloud PC; IT admins can't access it.|
|userSettingsPersistenceStorageSizeCategory|[cloudPcUserSettingsPersistenceStorageSizeCategory](#cloudpcusersettingspersistencestoragesizecategory-values)|Indicates the storage size for persisting user application settings. The possible values are: `fourGB`, `eightGB`, `sixteenGB`, `thirtyTwoGB`, `sixtyFourGB`, `unknownFutureValue`. The default value is `fourGB`.|

### cloudPcUserSettingsPersistenceStorageSizeCategory values 

Describes the storage size for user settings persistence.

| Member              | Description                                                                          |
|:--------------------|:-------------------------------------------------------------------------------------|
| fourGB              | Default. Indicates that the storage size for persisting user application settings is 4GB. |
| eightGB             | Indicates that the storage size for persisting user application settings is 8GB.          |
| sixteenGB           | Indicates that the storage size for persisting user application settings is 16GB.         |
| thirtyTwoGB         | Indicates that the storage size for persisting user application settings is 32GB.         |
| sixtyFourGB         | Indicates that the storage size for persisting user application settings is 64GB.         |
| unknownFutureValue  | Evolvable enumeration sentinel value. Don't use.                                     |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcUserSettingsPersistenceConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcUserSettingsPersistenceConfiguration",
  "userSettingsPersistenceEnabled": "Boolean",
  "userSettingsPersistenceStorageSizeCategory": "String"
}
```
