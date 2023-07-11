---
title: "userRegistrationFeatureSummary resource type"
description: "Represents the summary of users capable of multi-factor authentication, self-service password reset, and passwordless authentication in an organization."
author: "besiler"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationFeatureSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of users capable of multi-factor authentication, self-service password reset, and passwordless authentication in an organization.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [usersRegisteredByFeature](../api/authenticationmethodsroot-usersregisteredbyfeature.md) | [userRegistrationFeatureSummary](../resources/userregistrationfeaturesummary.md) | Get the number of users capable of multi-factor authentication, self-service password reset, and passwordless authentication. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users accounts, excluding those that are blocked.|
|userRegistrationFeatureCounts|[userRegistrationFeatureCount](../resources/userregistrationfeaturecount.md) collection|Number of users registered or capable for multi-factor authentication, self-service password reset, and passwordless authentication.|
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
  "@odata.type": "microsoft.graph.userRegistrationFeatureSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureSummary",
  "totalUserCount": "Int64",
  "userRegistrationFeatureCounts": [{"@odata.type": "microsoft.graph.userRegistrationFeatureCount"}],
  "userRoles": "String",
  "userTypes": "String"
}
```
