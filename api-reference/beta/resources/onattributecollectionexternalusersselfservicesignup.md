---
title: "onAttributeCollectionExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for the attribute collection step in an external identities user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a managed handler for the attribute collection step in an external identities user flow on an Azure AD workforce or customer tenant. It defines what attributes to collect from a user and how the attribute collection will be rendered for the user.

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

