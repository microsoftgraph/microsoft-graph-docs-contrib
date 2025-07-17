---
title: "cloudPcConnection resource type"
description: "Represents a Cloud PC connection for a given managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# cloudPcConnection resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloud PC connection for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List Cloud PC connections](../api/managedtenants-managedtenant-list-cloudpcconnections.md)|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) collection|Get a list of the [cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) objects and their properties.|
|[Get Cloud PC connection](../api/managedtenants-cloudpcconnection-get.md)|[microsoft.graph.managedTenants.cloudPcConnection](../resources/managedtenants-cloudpcconnection.md)|Read the properties and relationships of a [cloudPcConnection](../resources/managedtenants-cloudpcconnection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the cloud PC connection. Required. Read-only.|
|healthCheckStatus|String|The health status of the cloud PC connection. Possible values are: `pending`, `running`, `passed`, `failed`, `unknownFutureValue`.  Required. Read-only.|
|id|String|The unique identifier for the cloud PC connection. Required. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Required. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Required. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
