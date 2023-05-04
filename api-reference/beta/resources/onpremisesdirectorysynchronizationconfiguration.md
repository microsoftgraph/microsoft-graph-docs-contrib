---
title: "onPremisesDirectorySynchronizationConfiguration resource type"
description: "Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# onPremisesDirectorySynchronizationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Consists of configurations that can be fine-tuned and impact the on-premises directory synchronization process for a tenant.

## Properties

| Property                                 | Type                                                                                             | Description                                                                                                                        |
| :--------------------------------------- | :----------------------------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------- |
| accidentalDeletionPrevention             | [onPremisesAccidentalDeletionPrevention](../resources/onpremisesaccidentaldeletionprevention.md) | Contains the accidental deletion prevention configuration for a tenant.                                                            |
| anchorAttribute                          | String                                                                                           | The anchor attribute allows customers to customize the property used to create source anchors for synchronization enabled objects. |
| applicationId                            | String                                                                                           | The identifier of the on-premises directory synchronization client application that is configured for the tenant.                  |
| currentExportData                        | [onPremisesCurrentExportData](../resources/onpremisescurrentexportdata.md)                       | Data for the current export run.                                                                                                   |
| customerRequestedSynchronizationInterval | Duration                                                                                         | Interval of time that the customer requested the sync client waits between sync cycles.                                            |
| synchronizationClientVersion             | String                                                                                           | Indicates the version of the on-premises directory synchronization application.                                                    |
| synchronizationInterval                  | Duration                                                                                         | Interval of time the sync client should honor between sync cycles                                                                  |
| writebackConfiguration                   | [onPremisesWritebackConfiguration](../resources/onpremiseswritebackconfiguration.md)             | Configuration to control how cloud created or owned objects are synchronized back to the on-premises directory.                    |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesDirectorySynchronizationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesDirectorySynchronizationConfiguration",
  "accidentalDeletionPrevention": {
    "@odata.type": "microsoft.graph.onPremisesAccidentalDeletionPrevention"
  },
  "anchorAttribute": "String",
  "applicationId": "String",
  "currentExportData": {
    "@odata.type": "microsoft.graph.onPremisesCurrentExportData"
  },
  "customerRequestedSynchronizationInterval": "String (duration)",
  "synchronizationClientVersion": "String",
  "synchronizationInterval": "String (duration)",
  "writebackConfiguration": {
    "@odata.type": "microsoft.graph.onPremisesWritebackConfiguration"
  }
}
```
