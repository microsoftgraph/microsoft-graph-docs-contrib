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

Represents the [policy configuration of self-service sign-up experience](../resources/selfservicesignupauthenticationflowconfiguration.md) at a tenant level that lets external users to request to sign up for approval. It contains information about the id, display name, description, and whether self-service sign-up is enabled for the policy.

## Properties
|Property|Type|Description|Key|Required|ReadOnly|
|:-------|:---|:----------|:--|:-------|:-------|
|id|String| Inherited property. The ID of the authentication flows policy|Yes|No|Yes|
|displayName|String| Inherited property.The human-readable name of the policy, "Authentication flows policy"|No|No|Yes|
|description|String|Inherited property. A description of the policy|No|No|Yes|
|selfServiceSignUp|Contains [selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md) settings that convey whether self-service sign-up is enabled or disabled|Self-service sign-up configuration |No|No|No|

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

``` json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "selfServiceSignUp": {
    "@odata.type": "#microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
  },
}
```
