---
title: "authenticationMethodsRegistrationCampaignIncludeTarget resource type"
description: "Allow users and groups of users to be prompted to set up targeted authentication methods."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationMethodsRegistrationCampaignIncludeTarget resource type

Namespace: microsoft.graph

Represents the users and groups that are targeted for authentication method registration campaigns. Only users and groups that are enabled by the policy to set up the authentication method are targeted.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The object identifier of a Microsoft Entra user or group.|
|targetedAuthenticationMethod|String|The authentication method that the user is prompted to register. The value must be `microsoftAuthenticator`.|
|targetType|authenticationMethodTargetType|The type of the authentication method target. The possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationMethodsRegistrationCampaignIncludeTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsRegistrationCampaignIncludeTarget",
  "id": "String (identifier)",
  "targetedAuthenticationMethod": "String",
  "targetType": "String"
}
```
