---
title: "featureRolloutPolicy resource type"
description: "Represents a feature rollout policy associated with a directory object."
ms.localizationpriority: medium
author: "madhavpatel6"
ms.subservice: "entra-directory-management"
doc_type: "resourcePageType"
---

# featureRolloutPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [feature-rolloutpolicy-deprecate](../../includes/directory-featurerolloutpolicies-deprecate.md)]

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a feature rollout policy associated with a directory object. Creating a feature rollout policy helps tenant administrators to pilot features of Microsoft Entra ID with a specific group before enabling features for entire organization. This minimizes the impact and helps administrators to test and rollout authentication related features gradually.

The following are limitations of feature rollout:

- Each feature supports a maximum of 10 groups.
- The **appliesTo** field only supports groups.
- Dynamic groups and nested groups aren't supported.

For more information about staged rollout, see [How to configure staged rollout in Microsoft Entra ID](https://www.youtube.com/watch?v=LFTE1epYDFQ).

## Methods

| Method                                                                         | Return Type                                     | Description                                                               |
|:-------------------------------------------------------------------------------|:------------------------------------------------|:--------------------------------------------------------------------------|
| [List featureRolloutPolicies](../api/list-featurerolloutpolicies.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Retrieve a list of featureRolloutPolicy objects.                          |
| [Get featureRolloutPolicy](../api/featurerolloutpolicy-get.md)                 | [featureRolloutPolicy](featurerolloutpolicy.md) | Retrieve the properties and relationships of featurerolloutpolicy object. |
| [Create featureRolloutPolicy](../api/post-featurerolloutpolicies.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Create a new featureRolloutPolicy object.                                 |
| [Update featureRolloutPolicy](../api/featurerolloutpolicy-update.md)           | [featureRolloutPolicy](featurerolloutpolicy.md) | Update the properties of featurerolloutpolicy object.                     |
| [Delete featureRolloutPolicy](../api/featurerolloutpolicy-delete.md)           | None                                            | Delete a featureRolloutPolicy object.                                     |
| [Assign appliesTo](../api/featurerolloutpolicy-post-appliesto.md)              | [directoryObject](directoryobject.md)           | Assign a directoryObject to feature rollout.                              |
| [Remove appliesTo](../api/featurerolloutpolicy-delete-appliesto.md)            | None                                            | Remove a directoryObject from feature rollout.                            |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|A description for this feature rollout policy.|
|displayName|String|The display name for this  feature rollout policy.|
|feature|stagedFeatureName| Possible values are: `passthroughAuthentication`, `seamlessSso`, `passwordHashSync`, `emailAsAlternateId`, `unknownFutureValue`, `certificateBasedAuthentication`. You must use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `certificateBasedAuthentication`. For more information about the prerequisites for the enabled features, see [Prerequisites for enabled features](#prerequisites-for-enabled-features).|
|id|String| Read-only.|
|isAppliedToOrganization|Boolean|Indicates whether this feature rollout policy should be applied to the entire organization.|
|isEnabled|Boolean|Indicates whether the feature rollout is enabled.|

### Prerequisites for enabled features

The following are prerequisites for each of the features that are currently supported for rollout using this rollout policy.

#### Passthrough Authentication

* Identify a server running Windows Server 2012 R2 or later where you want the [PassthroughAuthentication](/azure/active-directory/hybrid/how-to-connect-pta) Agent to run. Ensure that the server is domain-joined, can authenticate selected users with Active Directory, and can communicate with Microsoft Entra ID on outbound ports / URLs.
* [Download](https://aka.ms/getauthagent) & install the Microsoft Entra Connect Authentication Agent on the server.
* To enable high availability, install additional Authentication Agents on other servers as described [here](/azure/active-directory/hybrid/how-to-connect-pta-quick-start#step-4-ensure-high-availability).
* Ensure that you've configured your [Smart Lockout](/azure/active-directory/authentication/howto-password-smart-lockout) settings appropriately. This is to ensure that your users' on-premises Active Directory accounts don't get locked out by bad actors.

#### SeamlessSso

* Enable [SeamlessSso](/azure/active-directory/hybrid/how-to-connect-sso) for the AD forests based on [these](/azure/active-directory/hybrid/tshoot-connect-sso#manual-reset-of-the-feature) instructions.

#### PasswordHashSync

* Enable [PasswordHashSync](/azure/active-directory/hybrid/whatis-phs) from the "Optional features" page in Microsoft Entra Connect.

#### EmailAsAlternateId

* Associate alternate email  with user accounts.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| Nullable. Specifies a list of directoryObject resources that feature is enabled for.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.featureRolloutPolicy",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "feature": "string",
  "id": "String (identifier)",
  "isAppliedToOrganization": false,
  "isEnabled": true
}
```

## Related content

- [Migrate to cloud authentication using Staged Rollout](/entra/identity/hybrid/connect/how-to-connect-staged-rollout)

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "featureRolloutPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
