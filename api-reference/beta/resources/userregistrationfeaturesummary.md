---
title: "userRegistrationFeatureSummary resource type"
description: "Represents the summary of users capable of multifactor authentication, self-service password reset, and passwordless authentication in an organization."
author: "egreenberg14"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationFeatureSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of users capable of multifactor authentication, self-service password reset, and passwordless authentication in an organization. For more information about license requirements for this feature, see [Authentication Methods Activity: Permissions and licenses](/entra/identity/authentication/howto-authentication-methods-activity#permissions-and-licenses).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [usersRegisteredByFeature](../api/authenticationmethodsroot-usersregisteredbyfeature.md) | [userRegistrationFeatureSummary](../resources/userregistrationfeaturesummary.md) | Get the number of users capable of multifactor authentication, self-service password reset, and passwordless authentication. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users accounts, excluding those that are blocked.|
|userRegistrationFeatureCounts|[userRegistrationFeatureCount](../resources/userregistrationfeaturecount.md) collection|Number of users registered or capable for multifactor authentication, self-service password reset, and passwordless authentication.|
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

The value `admin` includes all Microsoft Entra admin roles.

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
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
