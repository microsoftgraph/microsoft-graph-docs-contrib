---
title: "serviceApp resource type"
description: "Represents a service application being registered as a Backup service control app"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# serviceApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a service application being registered as a Backup service control app.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List serviceApp](../api/backuprestoreroot-list-serviceapps.md)|[serviceApp](../resources/serviceapp.md) collection|Get a list of the [serviceApp](../resources/serviceapp.md) and their properties.|
|[Create serviceApp](../api/backuprestoreroot-post-sharepointprotectionpolicies.md)|[serviceApp](../resources/serviceapp.md)|Create a new [serviceApp](../resources/serviceapp.md).|
|[Get serviceApp](../api/serviceapp-get.md)|[serviceApp](../resources/serviceapp.md)|Read the properties and relationships of a [serviceApp](../resources/serviceapp.md).|
|[Delete serviceApp](../api/backuprestoreroot-delete-serviceapps.md)|None|Delete a [serviceApp](../resources/serviceapp.md).|
|[activate](../api/serviceapp-activate.md)|[serviceApp](../resources/serviceapp.md)|Activate a serviceApp on behalf of the signed-in user.|
|[deactivate](../api/serviceapp-deactivate.md)|[serviceApp](../resources/serviceapp.md)|Deactivate a serviceApp on behalf of the signed-in user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|AAD Application ID.|
|effectiveDateTime|DateTimeOffset|Timestamp of effective activation of the service app entity.|
|id|String|The unique identifier of a service app.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity.|
|registrationDateTime|DateTimeOffset|Timestamp of creation of the service app entity.|
|status|[serviceAppStatus](../resources/serviceapp.md#serviceappstatus-values)|Status of the service app. This controls whether application can be used to control Backup service or not.The possible values are: `inactive`, `active`, `pendingActive`, `pendingInactive`, `unknownFutureValue`.|

### serviceAppStatus values

|Member | Description |
|:------|:------------|
|inactive|The app is registered with backup service.|
|active|The app is active to be used as backup service control app.|
|pendingActive|This app is requested to be activated but not yet active. This app can't be used to control/manage the backup service. This app will have ReadOnly access to the Protection Policies and Protection Units.|
|pendingInactive|This app is requested to be inactive but not yet inactive. This app can be used to control the backup service until effective date.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceApp",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceApp",
  "id": "String (identifier)",
  "status": "String",
  "registrationDateTime": "String (timestamp)",
  "effectiveDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "application": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```
