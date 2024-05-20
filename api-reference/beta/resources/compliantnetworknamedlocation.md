---
title: "compliantNetworkNamedLocation resource type"
description: "Represents a Microsoft Entra ID named location defined by Global Secure Access. Named locations are custom rules that define network locations that can then be used in a Conditional Access policy."
author: "ckeatss"
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# compliantNetworkNamedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra ID named location defined by Global Secure Access. Automatically created with the name "All Compliant Network Locations" when you enable Global Secure Access signaling for Conditional Access. Named locations are custom rules that define network locations that can then be used in a Conditional Access policy.


Inherits from [namedLocation](../resources/namedlocation.md).

## Methods
| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List compliantNetworkNamedLocations](../api/conditionalaccessroot-list-namedlocations.md) | [compliantNetworkNamedLocation](compliantnetworknamedlocation.md) collection | Get all the **compliantNetworkNamedLocation** objects in the organization. |
| [Get compliantNetworkNamedLocation](../api/compliantnetworknamedlocation-get.md) | [compliantNetworkNamedLocation](compliantnetworknamedlocation.md) | Read the properties and relationships of a **compliantNetworkNamedLocation** object. |
| [Update compliantNetworkNamedLocation](../api/compliantnetworknamedlocation-update.md) | [compliantNetworkNamedLocation](compliantnetworknamedlocation.md) | Update a **compliantNetworkNamedLocation** object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|compliantNetworkType|compliantNetworkType|Type of network access location. Currently the only possible value is `allTenantCompliantNetworks`.|
|createdDateTime|DateTimeOffset|The Timestamp type represents creation date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [namedLocation](../resources/namedlocation.md).|
|displayName|String|Human-readable name of the location. Required. Not changeable. Inherited from [namedLocation](../resources/namedlocation.md).|
|id|String|Identifier of a namedLocation object. Read-only. Inherited from [entity](../resources/entity.md).|
|isTrusted|Boolean|`true` if this location is explicitly trusted. Optional. Default value is `false`.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents last modified date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [namedLocation](../resources/namedlocation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.compliantNetworkNamedLocation",
}
-->
``` json
{
  "compliantNetworkType": "String",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isTrusted": "Boolean",
  "modifiedDateTime": "String (timestamp)"
}
```

## Related content

+ [Enable compliant network check with Conditional Access](/azure/global-secure-access/how-to-compliant-network)
+ [What is GLobal Secure Access?](/azure/global-secure-access/overview-what-is-global-secure-access)
+ [What is Conditional Access?](/azure/active-directory/conditional-access/overview)
+ [Using the location condition in a Conditional Access policy](/azure/active-directory/conditional-access/location-condition)