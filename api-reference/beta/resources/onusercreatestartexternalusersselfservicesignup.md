---
title: "onUserCreateStartExternalUsersSelfServiceSignUp resource type"
description: "Managed handler for user creation step in an external identities self-service sign-up user flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# onUserCreateStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a managed handler for the user creation step in an external identities self-service sign-up user flow on a Microsoft Entra workforce or customer tenant. It defines whether a guest or member user type is created.

Inherits from [onUserCreateStartHandler](../resources/onusercreatestarthandler.md). Complex type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|userTypeToCreate|userType| The type of [user](user.md) object to create. The possible values are: `member`, `guest`, `unknownFutureValue`.|
<!--
|accessPackages|[authenticationAccessPackageConfiguration](../resources/authenticationaccesspackageconfiguration.md) collection|Optional. Defines the access package attached to the user flow - for which a request will be submitted. Applicable only to user flows configured in Azure AD workforce tenant.**SHOULD BE HIDDEN**|
|userTypeToCreate|userType|Defines the type of user created by this authentication flow. The possible values are: `member`, `guest`, `unknownFutureValue`.|
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
