---
title: "userRegistrationMethodSummary resource type"
description: "Represents the summary of the number of users registered for each authentication method."
author: "kvenkit"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationMethodSummary resource type

Namespace: microsoft.graph

Represents the summary of number of users registered for each authentication method.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [usersRegisteredByMethod](../api/authenticationmethodsroot-usersregisteredbymethod.md) | [userRegistrationMethodSummary](../resources/userregistrationmethodsummary.md) | Get the number of users registered for each authentication method. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users in the tenant.|
|userRegistrationMethodCounts|[userRegistrationMethodCount](../resources/userregistrationmethodcount.md) collection|Number of users registered for each authentication method.|
|userRoles|includedUserRoles|The role type of the user. Possible values are: `all`, `privilegedAdmin`, `admin`, `user`, `unknownFutureValue`.|
|userTypes|includedUserTypes|User type. Possible values are: `all`, `member`, `guest`, `unknownFutureValue`.|

The value `privilegedAdmin` consists of the following privileged admin roles:

* Global Administrator
* Security Administrator
* Conditional Access Administrator
* Exchange Administrator
* SharePoint Administrator
* Helpdesk Administrator
* Billing Administrator
* User Administrator
* Authentication Administrator

The value `admin` includes all Azure Active Directory admin roles.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
