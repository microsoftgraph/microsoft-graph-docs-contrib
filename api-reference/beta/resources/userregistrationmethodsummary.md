---
title: "userRegistrationMethodSummary resource type"
description: "Represents the summary the of number of users registered for each authentication method."
author: "egreenberg14"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
ms.custom: sfi-ga-nochange
---

# userRegistrationMethodSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of number of users registered for each authentication method. For more information about license requirements for this feature, see [Authentication Methods Activity: Permissions and licenses](/entra/identity/authentication/howto-authentication-methods-activity#permissions-and-licenses).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/authenticationmethodsroot-usersregisteredbymethod.md) | [userRegistrationMethodSummary](../resources/userregistrationmethodsummary.md) | Get the number of users registered for each authentication method. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users in the tenant.|
|userRegistrationMethodCounts|[userRegistrationMethodCount](../resources/userregistrationmethodcount.md) collection|Number of users registered for each authentication method.|
|userRoles|includedUserRoles|The role type of the user. Possible values are: `all`, `privilegedAdmin`, `admin`, `user`, `unknownFutureValue`.|
|userTypes|includedUserTypes|User type. Possible values are: `all`, `member`, `guest`, `unknownFutureValue`.|

The value `privilegedAdmin` consists of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):

* Global Administrator
* Security Administrator
* Conditional Access Administrator
* Exchange Administrator
* SharePoint Administrator
* Helpdesk Administrator
* Billing Administrator
* User Administrator
* Authentication Administrator

The value `admin` includes all Microsoft Entra admin roles.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationMethodSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationMethodSummary",
  "totalUserCount": "Int64",
  "userRegistrationMethodCounts": [{"@odata.type": "microsoft.graph.userRegistrationMethodCount"}],
  "userRoles": "String",
  "userTypes": "String"
}
```
