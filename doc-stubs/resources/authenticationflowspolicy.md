---
title: "authenticationFlowsPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authenticationFlowsPolicy resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationFlowsPolicy](../api/policyroot-list-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) collection|Get the authenticationFlowsPolicies from the authenticationFlowsPolicy navigation property.|
|[Create authenticationFlowsPolicy](../api/policyroot-post-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Create a new authenticationFlowsPolicy object.|
|[Update authenticationFlowsPolicy](../api/policyroot-update-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Update the properties of an authenticationFlowsPolicy object.|
|[Get authenticationFlowsPolicy](../api/policyroot-get-authenticationflowspolicy.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Read the properties and relationships of an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|
|[Delete authenticationFlowsPolicy](../api/policyroot-delete-authenticationflowspolicy.md)|None|Delete an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|
|[List authenticationFlowsPolicies](../api/authenticationflowspolicy-list.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) collection|Get a list of the [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) objects and their properties.|
|[Create authenticationFlowsPolicy](../api/authenticationflowspolicy-create.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Create a new [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|
|[Get authenticationFlowsPolicy](../api/authenticationflowspolicy-get.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Read the properties and relationships of an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|
|[Update authenticationFlowsPolicy](../api/authenticationflowspolicy-update.md)|[authenticationFlowsPolicy](../resources/authenticationflowspolicy.md)|Update the properties of an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|
|[Delete authenticationFlowsPolicy](../api/authenticationflowspolicy-delete.md)|None|Deletes an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationFlowsPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationFlowsPolicy",
  "id": "String (identifier)",
  "selfServiceSignUp": {
    "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
  },
  "displayName": "String",
  "description": "String"
}
```

