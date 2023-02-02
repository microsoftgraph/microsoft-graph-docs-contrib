---
title: "authenticationMethodsRegistrationCampaignIncludeTarget resource type"
description: "Allow users and groups of users to be prompted to set up targeted authentication methods."
author: "mjsantani"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationMethodsRegistrationCampaignIncludeTarget resource type

Namespace: microsoft.graph

Represents the users and groups that are targeted for authentication method registration campaigns. Only users and groups that are enabled by the policy to set up the authentication method are targeted.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The object identifier of an Azure Active Directory user or group.|
|targetedAuthenticationMethod|String|The authentication method that the user is prompted to register. The value must be `microsoftAuthenticator`.|
|targetType|authenticationMethodTargetType|The type of the authentication method target. Possible values are: `user`, `group`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
