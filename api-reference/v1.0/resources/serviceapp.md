---
title: "serviceApp resource type"
description: "Represents a service application that's registered as a backup service control app."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# serviceApp resource type

Namespace: microsoft.graph

Represents a service application that's registered as a backup service control app.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-serviceapps.md)|[serviceApp](../resources/serviceapp.md) collection|Get a list of the [serviceApp](../resources/serviceapp.md) objects and their properties.|
|[Create](../api/backuprestoreroot-post-serviceapps.md)|[serviceApp](../resources/serviceapp.md)|Create a new [serviceApp](../resources/serviceapp.md).|
|[Get](../api/serviceapp-get.md)|[serviceApp](../resources/serviceapp.md)|Read the properties and relationships of a [serviceApp](../resources/serviceapp.md).|
|[Delete](../api/backuprestoreroot-delete-serviceapps.md)|None|Delete a [serviceApp](../resources/serviceapp.md).|
|[Activate](../api/serviceapp-activate.md)|[serviceApp](../resources/serviceapp.md)|Activate a service app on behalf of the signed-in user.|
|[Deactivate](../api/serviceapp-deactivate.md)|[serviceApp](../resources/serviceapp.md)|Deactivate a service app on behalf of the signed-in user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|The Entra ID application ID.|
|effectiveDateTime|DateTimeOffset|Timestamp of the effective activation of the service app.|
|id|String|The unique identifier of the service app.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified the entity.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification of the entity.|
|registrationDateTime|DateTimeOffset|Timestamp of the creation of the service app entity.|
|status|[serviceAppStatus](../resources/serviceapp.md#serviceappstatus-values)|The status of the service app. This value indicates whether or not the application can be used to control the backup service. The possible values are: `inactive`, `active`, `pendingActive`, `pendingInactive`, `unknownFutureValue`.|

### serviceAppStatus values

|Member | Description |
|:------|:------------|
|inactive|The app is registered with the backup service.|
|active|The app is actively in use as a backup service control app.|
|pendingActive|A request was made to activate the app but it's not yet active. The app can't be used to control or manage the backup service and has read-only access to the protection policies and protection units.|
|pendingInactive|A request was made to deactivate the app but the app isn't yet inactive. The app can be used to control the backup service until the effective date.|
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
