---
title: "onAttributeCollectionExternalUsersSelfServiceSignUp resource type"
description: "Managed handler that customizes what attributes are collected from an external user when authenticating to an application"
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

This is a managed handler for attribute collection step of a customized authentication flow for an application in a Microsoft Entra external tenant defined by a multi-event policy, [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md).  This handler defines what attributes to collect from a user. For web-hosted auth flows, it also defines how the attribute collection will be rendered for the user.

Inherits from [onAttributeCollectionHandler](../resources/onattributecollectionhandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributeCollectionPage|[authenticationAttributeCollectionPage](../resources/authenticationattributecollectionpage.md)|Required. The configuration for how attributes are displayed in the sign up experience defined by a user flow, like the [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md), specifically on the attribute collection page.|
<!--|accessPackages|[authenticationAccessPackageConfiguration](../resources/authenticationaccesspackageconfiguration.md) collection|Optional. A list of GUIDs referencing Entitlement Management [accessPackages](../resources/accesspackage.md) to check whether there are pending access requests for the specified user. Applicable only to user flows configured in Azure AD workforce tenant.|-->

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attributes|[identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection|A list of user attributes to collect.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
  "attributeCollectionPage": {
    "@odata.type": "microsoft.graph.authenticationAttributeCollectionPage"
  }
}
```
