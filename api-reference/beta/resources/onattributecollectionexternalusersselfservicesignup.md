---
title: "onAttributeCollectionExternalUsersSelfServiceSignUp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onAttributeCollectionExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This handler is a 'managed' handler that addresses the ability to configure attributes to collect and how the attribute collection will be rendered for the user.

Inherits from [onAttributeCollectionHandler](../resources/onattributecollectionhandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackages|[authenticationAccessPackageConfiguration](../resources/authenticationaccesspackageconfiguration.md) collection|Optional. A list of GUIDs referencing Entitlement Management [accessPackages](../resources/accesspackage.md)] to check whether there are pending access requests for the specified user. Applicable only to user flows configured in Azure AD workforce tenant.**SHOULD BE HIDDEN**|
|attributeCollectionPage|[authenticationAttributeCollectionPage](../resources/authenticationattributecollectionpage.md)|Required. The configuration for how attributes are displayed in the sign up experience defined by a user flow, or [externalUsersSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md), specifically on the Attribute Collection page.|

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
  "accessPackages": [
    {
      "@odata.type": "microsoft.graph.authenticationAccessPackageConfiguration"
    }
  ],
  "attributeCollectionPage": {
    "@odata.type": "microsoft.graph.authenticationAttributeCollectionPage"
  }
}
```

