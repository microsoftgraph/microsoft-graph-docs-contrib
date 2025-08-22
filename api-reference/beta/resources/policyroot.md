---
title: "policyRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# policyRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/policyroot-get.md)|[policyRoot](../resources/policyroot.md)|Read the properties and relationships of [policyRoot](../resources/policyroot.md) object.|
|[Update](../api/policyroot-update.md)|[policyRoot](../resources/policyroot.md)|Update the properties of a policyRoot object.|
|[List policyDeletableRoot](../api/policyroot-list-deleteditems.md)|[policyDeletableRoot](../resources/policydeletableroot.md) collection|**TODO: Add a useful description.**|
|[Create policyDeletableRoot](../api/policyroot-post-deleteditems.md)|[policyDeletableRoot](../resources/policydeletableroot.md)|Create a new policyDeletableRoot object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessReviewPolicy|[accessReviewPolicy](../resources/accessreviewpolicy.md)|**TODO: Add Description**|
|activityBasedTimeoutPolicies|[activityBasedTimeoutPolicy](../resources/activitybasedtimeoutpolicy.md) collection|**TODO: Add Description**|
|adminConsentRequestPolicy|[adminConsentRequestPolicy](../resources/adminconsentrequestpolicy.md)|**TODO: Add Description**|
|appManagementPolicies|[appManagementPolicy](../resources/appmanagementpolicy.md) collection|**TODO: Add Description**|
|authenticationFlowsPolicy|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|**TODO: Add Description**|
|authenticationMethodsPolicy|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|**TODO: Add Description**|
|authenticationStrengthPolicies|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection|**TODO: Add Description**|
|authorizationPolicy|[authorizationPolicy](../resources/authorizationpolicy.md) collection|**TODO: Add Description**|
|b2cAuthenticationMethodsPolicy|[b2cAuthenticationMethodsPolicy](../resources/b2cauthenticationmethodspolicy.md)|**TODO: Add Description**|
|claimsMappingPolicies|[claimsMappingPolicy](../resources/claimsmappingpolicy.md) collection|**TODO: Add Description**|
|conditionalAccessPolicies|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) collection|**TODO: Add Description**|
|crossTenantAccessPolicy|[crossTenantAccessPolicy](../resources/crosstenantaccesspolicy.md)|**TODO: Add Description**|
|defaultAppManagementPolicy|[tenantAppManagementPolicy](../resources/tenantappmanagementpolicy.md)|**TODO: Add Description**|
|deletedItems|[policyDeletableRoot](../resources/policydeletableroot.md)|**TODO: Add Description**|
|deviceRegistrationPolicy|[deviceRegistrationPolicy](../resources/deviceregistrationpolicy.md)|**TODO: Add Description**|
|directoryRoleAccessReviewPolicy|[directoryRoleAccessReviewPolicy](../resources/directoryroleaccessreviewpolicy.md)|**TODO: Add Description**|
|externalIdentitiesPolicy|[externalIdentitiesPolicy](../resources/externalidentitiespolicy.md)|**TODO: Add Description**|
|featureRolloutPolicies|[featureRolloutPolicy](../resources/featurerolloutpolicy.md) collection|**TODO: Add Description**|
|federatedTokenValidationPolicy|[federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md)|**TODO: Add Description**|
|homeRealmDiscoveryPolicies|[homeRealmDiscoveryPolicy](../resources/homerealmdiscoverypolicy.md) collection|**TODO: Add Description**|
|identitySecurityDefaultsEnforcementPolicy|[identitySecurityDefaultsEnforcementPolicy](../resources/identitysecuritydefaultsenforcementpolicy.md)|**TODO: Add Description**|
|mobileAppManagementPolicies|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) collection|**TODO: Add Description**|
|mobileDeviceManagementPolicies|[mobilityManagementPolicy](../resources/mobilitymanagementpolicy.md) collection|**TODO: Add Description**|
|permissionGrantPolicies|[permissionGrantPolicy](../resources/permissiongrantpolicy.md) collection|**TODO: Add Description**|
|permissionGrantPreApprovalPolicies|[permissionGrantPreApprovalPolicy](../resources/permissiongrantpreapprovalpolicy.md) collection|**TODO: Add Description**|
|roleManagementPolicies|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|**TODO: Add Description**|
|roleManagementPolicyAssignments|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection|**TODO: Add Description**|
|servicePrincipalCreationPolicies|[servicePrincipalCreationPolicy](../resources/serviceprincipalcreationpolicy.md) collection|**TODO: Add Description**|
|tokenIssuancePolicies|[tokenIssuancePolicy](../resources/tokenissuancepolicy.md) collection|**TODO: Add Description**|
|tokenLifetimePolicies|[tokenLifetimePolicy](../resources/tokenlifetimepolicy.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyRoot",
  "id": "String (identifier)"
}
```

