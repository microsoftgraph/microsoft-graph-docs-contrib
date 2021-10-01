---
title: "b2cIdentityUserFlow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# b2cIdentityUserFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [identityUserFlow](../resources/identityuserflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List b2cIdentityUserFlow](../api/b2cidentityuserflow-list.md)|[b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) collection|Get a list of the [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) objects and their properties.|
|[Create b2cIdentityUserFlow](../api/b2cidentityuserflow-create.md)|[b2cIdentityUserFlow](../resources/b2cidentityuserflow.md)|Create a new [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.|
|[Get b2cIdentityUserFlow](../api/b2cidentityuserflow-get.md)|[b2cIdentityUserFlow](../resources/b2cidentityuserflow.md)|Read the properties and relationships of a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.|
|[Update b2cIdentityUserFlow](../api/b2cidentityuserflow-update.md)|[b2cIdentityUserFlow](../resources/b2cidentityuserflow.md)|Update the properties of a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.|
|[Delete b2cIdentityUserFlow](../api/b2cidentityuserflow-delete.md)|None|Deletes a [b2cIdentityUserFlow](../resources/b2cidentityuserflow.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|apiConnectorConfiguration|[userFlowApiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md)|**TODO: Add Description**|
|authenticationMethods|b2cAuthenticationMethods|**TODO: Add Description**. The possible values are: `emailWithPassword`, `userName`, `phoneWithOneTimePassword`.|
|defaultLanguageTag|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isConditionalAccessEnforced|Boolean|**TODO: Add Description**|
|isJavaScriptEnabled|Boolean|**TODO: Add Description**|
|isLanguageCustomizationEnabled|Boolean|**TODO: Add Description**|
|multifactorAuthenticationConfiguration|[userFlowMultifactorAuthenticationConfiguration](../resources/userflowmultifactorauthenticationconfiguration.md)|**TODO: Add Description**|
|singleSignOnSessionConfiguration|[userFlowSingleSignOnSessionConfiguration](../resources/userflowsinglesignonsessionconfiguration.md)|**TODO: Add Description**|
|tokenClaimsConfiguration|[userFlowTokenClaimsConfiguration](../resources/userflowtokenclaimsconfiguration.md)|**TODO: Add Description**|
|userFlowType|userFlowType|**TODO: Add Description** Inherited from [identityUserFlow](../resources/identityuserflow.md). The possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single|**TODO: Add Description** Inherited from [identityUserFlow](../resources/identityuserflow.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|applicationClaims|[identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection|**TODO: Add Description**|
|identityProviders|[identityProvider](../resources/identityprovider.md) collection|**TODO: Add Description**|
|languages|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) collection|**TODO: Add Description**|
|pageLayouts|[userFlowPageLayout](../resources/userflowpagelayout.md) collection|**TODO: Add Description**|
|userAttributeAssignments|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) collection|**TODO: Add Description**|
|userFlowIdentityProviders|[identityProviderBase](../resources/identityproviderbase.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.b2cIdentityUserFlow",
  "baseType": "microsoft.graph.identityUserFlow",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.b2cIdentityUserFlow",
  "id": "String (identifier)",
  "userFlowType": "String",
  "userFlowTypeVersion": "Single",
  "apiConnectorConfiguration": {
    "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
  },
  "authenticationMethods": "String",
  "defaultLanguageTag": "String",
  "isConditionalAccessEnforced": "Boolean",
  "isJavaScriptEnabled": "Boolean",
  "isLanguageCustomizationEnabled": "Boolean",
  "multifactorAuthenticationConfiguration": {
    "@odata.type": "microsoft.graph.userFlowMultifactorAuthenticationConfiguration"
  },
  "singleSignOnSessionConfiguration": {
    "@odata.type": "microsoft.graph.userFlowSingleSignOnSessionConfiguration"
  },
  "tokenClaimsConfiguration": {
    "@odata.type": "microsoft.graph.userFlowTokenClaimsConfiguration"
  }
}
```

