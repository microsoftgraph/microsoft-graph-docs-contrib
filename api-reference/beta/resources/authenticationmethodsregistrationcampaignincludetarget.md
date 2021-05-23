---
title: "authenticationMethodsRegistrationCampaignIncludeTarget resource type"
description: "Allow users and groups of users to be nudged to set up targeted authentication methods."
author: "mjsantani"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationMethodsRegistrationCampaignIncludeTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Users and groups targeted for authentication method registration campaigns. Please note: Of the users in this include target, only users and groups that are enabled by policy to setup the authentication method will be targeted.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of an Azure AD user or group.|
|targetedAuthenticationMethod|String|The authentication method user is prompted to register. The only accepted value is currently 'microsoftAuthenticator'.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`, `unknownFutureValue`.|

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
  "targetType": "String",
  "targetedAuthenticationMethod": "String"
}
```

