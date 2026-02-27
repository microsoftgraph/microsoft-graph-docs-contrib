---
title: "countryNamedLocation resource type"
description: "Represents a Microsoft Entra ID named location defined by countries and regions. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy."
author: "ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# countryNamedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra ID named location defined by countries and regions. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy.

Inherits from [namedLocation](../resources/namedlocation.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [List](../api/conditionalaccessroot-list-namedlocations.md) | [countryNamedLocation](countryNamedLocation.md) collection | Get all the **countryNamedLocation** objects in the organization. |
| [Create](../api/conditionalaccessroot-post-namedlocations.md) | [countryNamedLocation](countryNamedLocation.md) | Create a new **countryNamedLocation** object. |
| [Get](../api/countrynamedlocation-get.md) | [countryNamedLocation](countrynamedlocation.md) | Read the properties and relationships of a **countryNamedLocation** object. |
| [Update](../api/countrynamedlocation-update.md) | [countryNamedLocation](countrynamedlocation.md) | Update a **countryNamedLocation** object. |
| [Delete](../api/countrynamedlocation-delete.md) | None | Delete a **countryNamedLocation** object. |
|[Restore](../api/countrynamedlocation-restore.md)|[countryNamedLocation](../resources/countryNamedLocation.md)|Restore a deleted **countryNamedLocation** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|countriesAndRegions|String collection|List of countries and/or regions in two-letter format specified by ISO 3166-2.|
|countryLookupMethod|countryLookupMethodType|Determines what method is used to decide which country the user is located in. Possible values are `clientIpAddress` (default) and `authenticatorAppGps`.|
|createdDateTime|DateTimeOffset|The Timestamp type represents creation date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [namedLocation](../resources/namedLocation.md).|
|displayName|String|Human-readable name of the location. Required. Inherited from [namedLocation](../resources/namedLocation.md).|
|id|String|Identifier of a namedLocation object. Read-only. Inherited from [namedLocation](../resources/namedLocation.md).|
|includeUnknownCountriesAndRegions|Boolean|`true` if IP addresses that don't map to a country or region should be included in the named location. Optional. Default value is `false`.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents last modified date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [namedLocation](../resources/namedLocation.md).|
|deletedDateTime|DateTimeOffset|Shows the last date and time the named location was deleted.Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.countryNamedLocation",
  "baseType": "microsoft.graph.namedLocation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.countryNamedLocation",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "countriesAndRegions": [
    "String"
  ],
  "includeUnknownCountriesAndRegions": "Boolean",
  "countryLookupMethod": "String"
}
```

