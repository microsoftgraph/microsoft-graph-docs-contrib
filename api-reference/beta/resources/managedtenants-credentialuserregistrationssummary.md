---
title: "credentialUserRegistrationsSummary resource type"
description: "Represents a summary of Microsoft Entra credential user registrations for a given managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# credentialUserRegistrationsSummary resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of Microsoft Entra credential user registrations for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List credential user registration summaries](../api/managedtenants-managedtenant-list-credentialuserregistrationssummaries.md)|[microsoft.graph.managedTenants.credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) collection|Get a list of the [credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) objects and their properties.|
|[Get credential user registrations summary](../api/managedtenants-credentialuserregistrationssummary-get.md)|[microsoft.graph.managedTenants.credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md)|Read the properties and relationships of a [credentialUserRegistrationsSummary](../resources/managedtenants-credentialuserregistrationssummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity. Required. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.|
|mfaAndSsprCapableUserCount|Int32|The number of users that are capable of performing multi-factor authentication or self service password reset. Optional. Read-only.|
|mfaConditionalAccessPolicyState|String|The state of a conditional access policy that enforces multi-factor authentication. Optional. Read-only.|
|mfaExcludedUserCount|Int32|The number of users in the multi-factor authentication exclusion security group (Microsoft 365 Lighthouse - MFA exclusions). Optional. Read-only.|
|mfaRegisteredUserCount|Int32|The number of users registered for multi-factor authentication. Optional. Read-only.|
|securityDefaultsEnabled|Boolean|A flag indicating whether Identity Security Defaults is enabled. Optional. Read-only.|
|ssprEnabledUserCount|Int32|The number of users enabled for self service password reset. Optional. Read-only.|
|ssprRegisteredUserCount|Int32|The number of users registered for self service password reset. Optional. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Required. Read-only.|
|tenantId|String|The Microsoft Entra tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Required. Read-only.|
|tenantLicenseType|String|The license type associated with the tenant; for example, `AADFree`, `AADPremium1`, `AADPremium2`.|
|totalUserCount|Int32|The total number of users in the given managed tenant. Optional. Read-only.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.credentialUserRegistrationsSummary",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.credentialUserRegistrationsSummary",
  "id": "String (identifier)",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "mfaAndSsprCapableUserCount": "Integer",
  "mfaExcludedUserCount": "Integer",
  "ssprEnabledUserCount": "Integer",
  "mfaRegisteredUserCount": "Integer",
  "ssprRegisteredUserCount": "Integer",
  "totalUserCount": "Integer",
  "securityDefaultsEnabled": "Boolean",
  "mfaConditionalAccessPolicyState": "String",
  "lastRefreshedDateTime": "String (timestamp)"
}
```
