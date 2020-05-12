---
title: "authenticationFlowsPolicy resource type"
description: "This API or policy is to enable/disable the self-service sign up experience at a tenant level. This is designed to be used for other similar settings for all authentication flows."
author: "linkhp"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationFlowsPolicy resource type


Namespace: microsoft.graph

The self-service sign up experience in regular Azure Active Directory (Azure AD) tenants (otherwise known as ExtId/ExId/BYOI) [enables users to initiate a self-service sign up flow](../resources/selfservicesignupauthenticationflowconfiguration.md). The tenant admin or the workflow admin can approve or deny a user's request to sign up in their tenant. This can be compared with the current experience in a regular Azure AD tenant, where a user has to be invited or created manually by the tenant admin. 

Currently, this API is to enable/disable the self-service sign up experience at a tenant level. The API is designed to be used for other similar settings for all authentication flows.

The policy/api is named 'authentication flows' because the settings here will refer to the flow of user when they use identity. For example sign up is a flow, sign in is a flow, profile update, progressive profiling etc are the various authentication flows a user can go through.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md)|**TODO: Add Description**|

|Property|Type|Description|Key|Required|ReadOnly|
|:-------|:---|:----------|:--|:-------|:-------|
|`id`|`Edm.string`| Inherited property. The ID of the authentication flows policy|Yes|No|Yes|
|`displayName`|`Edm.string`| Inherited property.The human-readable name of the policy, "Authentication flows policy"|No|No|Yes|
|`description`|`Edm.string`|Inherited property. A description of the policy|No|No|Yes|
|`selfServiceSignUp`|`microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration`|Self service sign up configuration |No|No|No|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationFlowsPolicy",
  "baseType": "",
  "openType": false
}
-->
<!--
{
  "@odata.type": "#microsoft.graph.authenticationFlowsPolicy",
  "selfServiceSignUp": {
    "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
  },
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
-->
``` json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```
