---
title: "b2xIdentityUserFlow resource type"
description: "Represents a self-service sign-up user flow within a Microsoft Entra tenant."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "nanguil"
ms.date: 06/06/2024
---

# b2xIdentityUserFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a self-service sign-up user flow within a Microsoft Entra tenant.

User flows are used to enable a [self-service sign up](/azure/active-directory/external-identities/self-service-sign-up-overview) experience for guest users on an application. User flows define the experience the end user sees while signing up. This experience includes which [identity providers](/azure/active-directory/external-identities/identity-providers) they can use to authenticate, and which attributes are collected as part of the sign up process.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List user flows](../api/identitycontainer-list-b2xuserflows.md)|b2xIdentityUserFlow collection|Retrieve all B2X user flows.|
|[Get user flow](../api/b2xidentityuserflow-get.md)|b2xIdentityUserFlow|Retrieve properties of a B2X user flow.|
|[Create user flow](../api/identitycontainer-post-b2xuserflows.md)|b2xIdentityUserFlow|Create a new B2X user flow.|
|[Delete user flow](../api/b2xidentityuserflow-delete.md)|None|Delete a B2X user flow.|
|[List identity providers](../api/b2xidentityuserflow-list-userflowidentityproviders.md)|[identityProvider](../resources/identityproviderbase.md) collection|Retrieve all identity providers in a B2X user flow.|
|[Add identity provider](../api/b2xidentityuserflow-userflowidentityproviders-update.md)|None|Add an identity provider to a B2X user flow.|
|[Remove identity provider](../api/b2xidentityuserflow-delete-userflowidentityproviders.md)|None|Remove an identity provider from a B2X user flow.|
|[List identity providers](../api/b2xidentityuserflow-list-identityproviders.md) (deprecated)|[identityProvider](../resources/identityProvider.md) collection|Retrieve all identity providers in a B2X user flow.|
|[Add identity provider](../api/b2xidentityuserflow-post-identityproviders.md) (deprecated)|None|Add an identity provider to a B2X user flow.|
|[Remove identity provider](../api/b2xidentityuserflow-delete-identityproviders.md) (deprecated)|None|Remove an identity provider from a B2X user flow.|
|[List user attribute assignments](../api/b2xidentityuserflow-list-userattributeassignments.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) collection|Retrieve all user attribute assignments in a B2X user flow.|
|[Create user attribute assignment](../api/b2xidentityuserflow-post-userattributeassignments.md)|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md)|Create a user attribute assignment in a B2X user flow.|
|[List languages](../api/b2xidentityuserflow-list-languages.md)|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) collection|Retrieve all languages within a B2X user flow.|
|[Get API connectors configuration for user flow](../api/b2xidentityuserflow-get-apiconnectorconfiguration.md)|[userFlowApiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md)| Get the configuration for API connectors used in the user flow. The $expand query parameter isn't supported for this method.|
|[Configure an API connector in a user flow](../api/b2xidentityuserflow-put-apiconnectorconfiguration.md)|None| Configure an API connector for specific steps in a user flow by updating the [apiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md) property.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The name of the user flow. This is a required value and is immutable after it's created. The name will be prefixed with the value of `B2X_1_` after creation.|
|userFlowType|userFlowType|The type of user flow. For self-service sign-up user flows, the value can only be `signUpOrSignIn` and can't be modified after creation.|
|userFlowTypeVersion|Single|The version of the user flow. For self-service sign-up user flows, the version is always `1`.|
|apiConnectorConfiguration|[userFlowApiConnectorConfiguration](../resources/userflowapiconnectorconfiguration.md)|Configuration for enabling an API connector for use as part of the self-service sign-up user flow. You can only obtain the value of this object using [Get userFlowApiConnectorConfiguration](../api/b2xidentityuserflow-get-apiConnectorConfiguration.md).|

## Relationships

| Relationship       | Type  |Description|
|:---------------|:--------|:----------|
|userflowIdentityProviders|[identityProviderBase](../resources/identityproviderbase.md) collection|The identity providers included in the user flow.|
|identityProviders (deprecated)|[identityProvider](../resources/identityprovider.md) collection|The identity providers included in the user flow.|
|userAttributeAssignments|[identityUserFlowAttributeAssignment](../resources/identityuserflowattributeassignment.md) collection|The user attribute assignments included in the user flow.|
|languages|[userFlowLanguageConfiguration](../resources/userflowlanguageconfiguration.md) collection|The languages supported for customization within the user flow. Language customization is enabled by default in self-service sign-up user flow. You can't create custom languages in self-service sign-up user flows.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.b2xIdentityUserFlow",
  "optionalProperties": [],
  "keyProperty": "id"
} -->

```json
{
    "id": "String (identifier)",
    "userFlowType": "String",
    "userFlowTypeVersion": "Single",
    "userflowIdentityProviders": [{"@odata.type": "microsoft.graph.identityProviderBase"}],
    "identityProviders": [{"@odata.type": "microsoft.graph.identityProvider"}],
    "userAttributeAssignments": [{"@odate.type": "microsoft.graph.identityUserFlowAttributeAssignment"}],
    "languages": [{"@odata.type": "microsoft.graph.userFlowLanguageConfiguration"}],
    "apiConnectorConfiguration": {
      "@odata.type": "microsoft.graph.userFlowApiConnectorConfiguration"
    }
}
```
