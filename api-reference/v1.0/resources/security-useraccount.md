---
title: "userAccount resource type"
description: "User account common properties."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userAccount resource type

Namespace: microsoft.graph.security

User account common properties.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountName|String|The user account's displayed name.|
|azureAdUserId|String|The user object identifier in Azure AD.|
|domainName|String|The name of the Active Directory domain of which the user is a member.|
|userPrincipalName|String|The user principal name of the account in Azure AD.|
|userSid|String|The local security identifier of the user account.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.userAccount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.userAccount",
  "accountName": "String",
  "domainName": "String",
  "userSid": "String",
  "azureAdUserId": "String",
  "userPrincipalName": "String"
}
```