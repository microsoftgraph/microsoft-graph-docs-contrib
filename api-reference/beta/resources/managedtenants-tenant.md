---
title: "tenant resource type"
description: "Represents a tenant associated with the managing entity."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tenant resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant associated with the managing entity.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tenants](../api/managedtenants-managedtenant-list-tenants.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md) collection|Get a list of the [tenant](../resources/managedtenants-tenant.md) objects and their properties.|
|[Get tenant](../api/managedtenants-tenant-get.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md)|Read the properties and relationships of a [tenant](../resources/managedtenants-tenant.md) object.|
|[Offboard tenant](../api/managedtenants-tenant-offboardtenant.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md)|Off boards a tenant from the multi-tenant management platform.|
|[Reset tenant onboarding status](../api/managedtenants-tenant-resettenantonboardingstatus.md)|[microsoft.graph.managedTenants.tenant](../resources/managedtenants-tenant.md)|Resets the tenant onboarding status with the multi-tenant management platform.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contract|[microsoft.graph.managedTenants.tenantContract](../resources/managedtenants-tenantcontract.md)|The relationship details for the tenant with the managing entity.|
|createdDateTime|DateTimeOffset|The date and time the tenant was created in the multi-tenant management platform. Optional. Read-only.|
|displayName|String|The display name for the tenant. Required. Read-only.|
|id|String|The Microsoft Entra tenant identifier for the tenant. Required. Read-only.|
|lastUpdatedDateTime|DateTimeOffset|The date and time the tenant was last updated within the multi-tenant management platform. Optional. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Optional. Read-only.|
|tenantStatusInformation|[microsoft.graph.managedTenants.tenantStatusInformation](../resources/managedtenants-tenantstatusinformation.md)|The onboarding status information for the tenant. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.tenant",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.tenant",
  "contract": {"@odata.type": "microsoft.graph.managedTenants.tenantContract"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "lastUpdatedDateTime": "String (timestamp)",
  "tenantId": "String",
  "tenantStatusInformation": {"@odata.type": "microsoft.graph.managedTenants.tenantStatusInformation"}
}
```
