---
title: "aggregatedPolicyCompliance resource type"
description: "Represents an aggregate view of device compliance for a managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# aggregatedPolicyCompliance resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an aggregate view of device compliance for a managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List aggregatedPolicyCompliances](../api/managedtenants-aggregatedpolicycompliance-list.md)|[microsoft.graph.managedTenants.aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) collection|Get a list of the [aggregatedPolicyCompliance](../resources/managedtenants-aggregatedpolicycompliance.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compliancePolicyId|String|Identifier for the device compliance policy.|
|compliancePolicyName|String|Name of the device compliance policy.|
|compliancePolicyPlatform|String|Platform for the device compliance policy. Possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `androidAOSP`, `all`.|
|compliancePolicyType|String|The type of compliance policy.|
|id|String|Unique identifier for the aggregate device compliance policy.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform.|
|numberOfCompliantDevices|Int64|The number of devices that are in a compliant status.|
|numberOfErrorDevices|Int64|The number of devices that are in an error status.|
|numberOfNonCompliantDevices|Int64|The number of device that are in a non-compliant status.|
|policyModifiedDateTime|DateTimeOffset|The date and time the device policy was last modified.|
|tenantDisplayName|String|The display name for the managed tenant.|
|tenantId|String|The Azure Active Directory tenant identifier for the managed tenant.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.aggregatedPolicyCompliance",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.aggregatedPolicyCompliance",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "compliancePolicyId": "String",
  "compliancePolicyName": "String",
  "compliancePolicyType": "String",
  "compliancePolicyPlatform": "String",
  "numberOfCompliantDevices": "Integer",
  "numberOfNonCompliantDevices": "Integer",
  "numberOfErrorDevices": "Integer",
  "policyModifiedDateTime": "String (timestamp)",
  "lastRefreshedDateTime": "String (timestamp)"
}
```
