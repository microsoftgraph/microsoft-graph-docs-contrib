---
title: "credentialUserRegistrationDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# credentialUserRegistrationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List credentialUserRegistrationDetails](../api/credentialuserregistrationdetails-list.md)|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) collection|Get a list of the [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects and their properties.|
|[Create credentialUserRegistrationDetails](../api/credentialuserregistrationdetails-create.md)|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md)|Create a new [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) object.|
|[Get credentialUserRegistrationDetails](../api/credentialuserregistrationdetails-get.md)|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md)|Read the properties and relationships of a [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) object.|
|[Update credentialUserRegistrationDetails](../api/credentialuserregistrationdetails-update.md)|[credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md)|Update the properties of a [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) object.|
|[Delete credentialUserRegistrationDetails](../api/credentialuserregistrationdetails-delete.md)|None|Deletes a [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authMethods|registrationAuthMethod collection|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|isCapable|Boolean|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|
|isMfaRegistered|Boolean|**TODO: Add Description**|
|isRegistered|Boolean|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.credentialUserRegistrationDetails",
  "id": "String (identifier)",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "authMethods": [
    "String"
  ],
  "isRegistered": "Boolean",
  "isEnabled": "Boolean",
  "isCapable": "Boolean",
  "isMfaRegistered": "Boolean"
}
```

