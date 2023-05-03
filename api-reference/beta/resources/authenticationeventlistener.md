---
title: "authenticationEventListener resource type"
description: "**TODO: Add Description**"
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationEventListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To customize the authentication process, listeners can be registered which specify that for some event, on some conditions, some custom logic can be invoked. This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationEventListeners](../api/identitycontainer-list-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md) collection|Get a list of the [authenticationEventListener](../resources/authenticationeventlistener.md) objects and their properties.|
|[Create authenticationEventListener](../api/identitycontainer-post-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Create a new [authenticationEventListener](../resources/authenticationeventlistener.md) object.|
|[Get authenticationEventListener](../api/authenticationeventlistener-get.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Read the properties and relationships of an [authenticationEventListener](../resources/authenticationeventlistener.md) object.|
|[Update authenticationEventListener](../api/authenticationeventlistener-update.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Update the properties of an [authenticationEventListener](../resources/authenticationeventlistener.md) object.|
|[Delete authenticationEventListener](../api/identitycontainer-delete-authenticationeventlisteners.md)|None|Deletes an [authenticationEventListener](../resources/authenticationeventlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authentication events flow.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger.|
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|**TODO: Add Description**|
|tags|[keyValuePair](../resources/intune-keyvaluepair.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationEventListener",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationEventListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "tags": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "authenticationEventsFlowId": "String"
}
```

