---
title: "authenticationMethodsPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authenticationMethodsPolicy resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationMethodsPolicies](../api/authenticationmethodspolicy-list.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) collection|Get a list of the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) objects and their properties.|
|[Create authenticationMethodsPolicy](../api/authenticationmethodspolicy-create.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Create a new [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[Get authenticationMethodsPolicy](../api/authenticationmethodspolicy-get.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Read the properties and relationships of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[Update authenticationMethodsPolicy](../api/authenticationmethodspolicy-update.md)|[authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md)|Update the properties of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[Delete authenticationMethodsPolicy](../api/authenticationmethodspolicy-delete.md)|None|Deletes an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.|
|[List authenticationMethodConfigurations](../api/authenticationmethodspolicy-list-authenticationmethodconfigurations.md)|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) collection|Get the authenticationMethodConfiguration resources from the authenticationMethodConfigurations navigation property.|
|[Create authenticationMethodConfiguration](../api/authenticationmethodspolicy-post-authenticationmethodconfigurations.md)|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md)|Create a new authenticationMethodConfiguration object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|policyVersion|String|**TODO: Add Description**|
|reconfirmationInDays|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationMethodConfigurations|[authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodsPolicy",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "policyVersion": "String",
  "reconfirmationInDays": "Integer"
}
```

