---
title: "onUserCreateStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler that customizes how an external user is created during the provisioning flow"
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onUserCreateStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

This is a managed handler for the user creation step of a customized authentication flow for an application in a Microsoft Entra external tenant defined by a multi-event policy, [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md). It defines what type of user is created.

Inherits from [onUserCreateStartHandler](../resources/onusercreatestarthandler.md). Complex type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|userTypeToCreate|String| The type of user to create. Maps to userType property of [user](user.md) object. The possible values are: `member`, `guest`, `unknownFutureValue`.|
<!--
|accessPackages|[authenticationAccessPackageConfiguration](../resources/authenticationaccesspackageconfiguration.md) collection|Optional. Defines the access package attached to the user flow - for which a request will be submitted. Applicable only to user flows configured in Azure AD workforce tenant.**SHOULD BE HIDDEN**|
-->

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
  "userTypeToCreate": "String"
}
```
