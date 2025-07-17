---
title: "onAttributeCollectionExternalUsersSelfServiceSignUp resource type"
description: "Represents a managed handler for the attribute collection step in an external identities user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# onAttributeCollectionExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a managed handler for the attribute collection step in an external identities user flow on a Microsoft Entra workforce or customer tenant. It defines what attributes to collect from a user and how the attribute collection is rendered for the user.

Inherits from [onAttributeCollectionHandler](../resources/onattributecollectionhandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attributeCollectionPage|[authenticationAttributeCollectionPage](../resources/authenticationattributecollectionpage.md)|Required. The configuration for how attributes are displayed in the sign-up experience defined by a user flow, like the [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md), specifically on the attribute collection page.|
<!--|accessPackages|[authenticationAccessPackageConfiguration](../resources/authenticationaccesspackageconfiguration.md) collection|Optional. A list of GUIDs referencing Entitlement Management [accessPackages](../resources/accesspackage.md) to check whether there are pending access requests for the specified user. Applicable only to user flows configured in Azure AD workforce tenant.|-->

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attributes|[identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection|A list of user attributes to collect.|

## JSON representation
The following JSON representation shows the resource type.
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
