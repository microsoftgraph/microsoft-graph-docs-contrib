---
title: "cloudPcConnection resource type"
description: "Represents a cloud PC connection for a given managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# cloudPcConnection resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a cloud PC connection for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcConnections](../api/managedtenants-managedtenant-list-cloudpcconnection.md)|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) collection|Get a list of the [cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) objects and their properties.|
|[Get cloudPcConnection](../api/managedtenants-cloudpcconnection-get.md)|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md)|Read the properties and relationships of a [cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the cloud PC connection.|
|healthCheckStatus|String|The health status of the cloud PC connection. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`.|
|id|String|The unique identifier for the cloud PC connection.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform.|
|tenantDisplayName|String|The display name for the managed tenant.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.cloudPcConnection",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.cloudPcConnection",
  "id": "String (identifier)",
  "displayName": "String",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "healthCheckStatus": "String",
  "lastRefreshedDateTime": "String (timestamp)"
}
```
