---
title: "workspace resource type"
description: "Specifies the properties of a workspace in a tenant."
ms.localizationpriority: medium
author: "slister1001"
ms.subservice: "outlook"
doc_type: "resourcePageType"
---

# workspace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a workspace in a tenant. 

In Exchange Online, each workspace is associated with a workspace mailbox. Derived from [place](place.md).

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | A collection of the requested, derived type of [place](place.md) | Get a collection of the specified type of **place** object defined in the tenant. For example, you can get all the rooms all the workspaces, all the room lists, the workspaces in a specific room list, or the rooms in a specific room list in the tenant. |
| [Get place](../api/place-get.md)    | The requested, derived type of [place](place.md)            | Get the properties and relationships of the specified **place** object, such as a room. |
| [Update place](../api/place-update.md)    | The requested, derived type of [place](place.md)            | Update the properties and relationships of a specified **place** object. |

## Properties

| Property               | Type                                              | Description |
|:-----------------------|:--------------------------------------------------|:--|
| address                | [physicalAddress](physicaladdress.md)             | The street address of the workspace. |
| building               | String                                            | Specifies the building name or building number that the workspace is in. |
| capacity               | Int32                                             | Specifies the capacity of the workspace. |
| displayName            | String                                            | The name associated with the workspace. |
| emailAddress           | String                                            | Email address of the workspace. |
| floorLabel             | String                                            | Specifies a descriptive label for the floor, for example, P. |
| floorNumber            | Int32                                             | Specifies the floor number that the workspace is on. |
| geoCoordinates         | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the workspace location in latitude, longitude and optionally, altitude coordinates. |
| id                     | String                                            | Unique identifier for the place. Read-only.  This identifier is not immutable and can change if there are changes to the mailbox or to the tenant configuration. |
| isWheelChairAccessible | Boolean                                           | Specifies whether the workspace is wheelchair accessible. |
| label                  | String                                            | Specifies a descriptive label for the workspace, for example, a number or name. |
| nickname               | String                                            | Specifies a nickname for the workspace, for example, "quiet workspace". |
| phone                  | String                                            | The phone number of the workspace. |
| placeId                | String                                            | Unique, immutable identifier for the place.  Read-only.  The value of this identifier is equal to the ExternalDirectoryObjectId returned from the Get-Mailbox cmdlet. |
| tags                   | String collection                                 | Specifies other features of the workspace; for example, the type of view or furniture type. |

### bookingType values

| Value    | Description                                               |
|:---------|:----------------------------------------------------------|
| standard | The workspace can be reserved based on the other settings in this cmdlet. This is the default value. |
| reserved | The workspace is available only on a first come, first served basis. It can't be reserved.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workspace",
  "baseType": "microsoft.graph.place",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workspace",
  "id": "String (identifier)",
  "displayName": "String",
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.outlookGeoCoordinates"
  },
  "phone": "String",
  "address": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "emailAddress": "String",
  "nickname": "String",
  "building": "String",
  "floorNumber": "Integer",
  "label": "String",
  "capacity": "Integer",
  "isWheelChairAccessible": "Boolean",
  "tags": [
    "String"
  ],
  "floorLabel": "String",
  "placeId": "String (alternate identifier)"
}
```

