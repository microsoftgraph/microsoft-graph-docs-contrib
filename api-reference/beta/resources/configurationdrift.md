---
title: "configurationDrift resource type"
description: "This endpoint allows admins to get granular details regarding all active drifts for all existing monitors."
author: "swatyario"
ms.date: 04/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# configurationDrift resource type

Namespace: microsoft.graph.configurationManagement.configurationDrifts

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This endpoint allows admins to get granular details regarding all active drifts for all existing monitors. This API is currently in preview and is available in commercial environments only.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/configurationdrift-get.md)|[configurationDrift](../resources/configurationdrift.md)|Get all active drifts against all existing monitors |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|baselineResourceDisplayName|String|Resource instance for which the drift is detected|
|driftedProperties|[driftedProperty](../resources/driftedproperty.md) collection|Properties within  one or more resource instances where the drift is detected|
|firstReportedDateTime|DateTimeOffset|Date & time at which the drift is first detected|
|id|String|Globally unique identifier / GUID of the drift Created by the system Inherits from [entity](../resources/entity.md)|
|monitorId|String|Globally unique identifier / GUID of the monitor [Created by the system]|
|resourceInstanceIdentifier|[openComplexDictionaryType](../resources/opencomplexdictionarytype.md)|An identifier that allow users to understand where the drift exactly is|
|resourceType|String|Resource for which the drift is detected|
|status|driftStatus|Status of the drift. The possible values as of now are: `active` and `fixed`.|
|tenantId|String|Globally unique identifier / GUID of the tenant for which the monitor is being run [Fetched automatically by the system]|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationDrift",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationDrift",
  "id": "String (identifier)",
  "tenantId": "String",
  "monitorId": "String",
  "resourceType": "String",
  "baselineResourceDisplayName": "String",
  "resourceInstanceIdentifier": {
    "@odata.type": "microsoft.graph.openComplexDictionaryType"
  },
  "firstReportedDateTime": "String (timestamp)",
  "status": "String",
  "driftedProperties": [
    {
      "@odata.type": "microsoft.graph.driftedProperty"
    }
  ]
}
```
## Example

The following JSON representation shows the configurationDrift resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.configurationDrift",
  "openType": false
}
-->
``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/configurationManagement/configurationDrifts/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/configurationManagement/configurationDrifts('<guid>')?$select=baselineResourceDisplayName,driftedProperties",
    "id": "4e808e99-7f60-4194-8294-02ede71effd8",
    "monitorId": "b166c9cb-db29-438b-95fb-247da1dc72c3",
    "tenantId": "96bf81b4-2694-42bb-9204-70081135ca61",
    "resourceType": "microsoft.exchange.accepteddomain",
    "baselineResourceDisplayName": "Accepted Domain",
    "firstReportedDateTime": "2024-12-12T09:00:57.4830642Z",
    "status": "active",
    "resourceInstanceIdentifier": {
        "Identity": "contoso.onmicrosoft.com"
    },
    "driftedProperties": [
        {
            "propertyName": "Ensure",
            "currentValue": "Absent",
            "desiredValue": "Present"
        }
    ]
}
```
