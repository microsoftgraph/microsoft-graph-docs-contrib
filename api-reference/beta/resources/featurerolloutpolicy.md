---
title: "featureRolloutPolicy resource type"
description: "Feature rollout policy ."
localization_priority: Normal
author: ""
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# Overview

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creating a Feature rollout policy helps tenant administrators to rollout features of Azure AD to a specific group instead enabling features for entire organization. This minimizes the impact and helps admins to test and rollout authentication related features gradually.

The list of supported features and their corresponding pre-requisites are specified below.

## Limitations of feature rollout

1. Each feature supports a maximum of 10 groups.
2. The appliesTo field only supports groups.
3. Dynamic groups and nested groups aren't supported currently.

## Pre-requisites

The following are pre-requisites for each of the features that are currently suported for rollout using this rollout policy.

### [Passthrough Authentication](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-pta)

* Identify a server running Windows Server 2012 R2 or later where you want the Authentication Agent to run (DO NOT choose the Azure AD Connect server). Ensure that the server is domain-joined, can authenticate selected users with Active Directory, and can communicate with Azure AD on outbound ports / URLs.
* [Download](https://aka.ms/getauthagent) & install the Microsoft Azure AD Connect Authentication Agent on the server.
* To enable high availability, install additional Authentication Agents on other servers as described [here](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-pta-quick-start#step-4-ensure-high-availability).
* Ensure that you have configured your [Smart Lockout](https://docs.microsoft.com/en-us/azure/active-directory/authentication/howto-password-smart-lockout) settings appropriately. This is to ensure that your users’ on-premises Active Directory accounts don’t get locked out by bad actors.

### [SeamlessSso](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/how-to-connect-sso)

* Enable SeamlessSso for the AD forests based on [these](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/tshoot-connect-sso#manual-reset-of-the-feature) instructions.

### [PasswordHashSync](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-phs)

* Enable Password Hash Sync from the “Optional features” page in Azure AD Connect.

# featureRolloutPolicy resource type

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get featureRolloutPolicy](../api/featurerolloutpolicy-get.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Read properties and relationships of featureRolloutPolicy object. |
| [Assign directoryObject To featureRolloutPolicy](../api/featurerolloutpolicy-post-appliesto.md) | [directoryObject](directoryobject.md) | Assign a directoryObject to feature rollout. |
| [Remove directoryObject from featureRolloutPolicy](../api/featurerolloutpolicy-delete-appliesto.md) | None | Remove a directoryObject from feature rollout. |
| [Update](../api/featurerolloutpolicy-update.md) | [featureRolloutPolicy](featurerolloutpolicy.md) | Update featureRolloutPolicy object. |
| [Delete](../api/featurerolloutpolicy-delete.md) | None | Delete featureRolloutPolicy object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|A description for this feature rollout policy.|
|displayName|String|The display name for this  feature rollout policy.|
|feature|stagedFeatureName| Possible values are: `passthroughAuthentication`, `seamlessSso`, `passwordHashSync`, `unknownFutureValue`.|
|id|String| Read-only.|
|isAppliedToOrganization|Boolean|Determines if this feature rollout policy should be applied to the entire organization.|
|isEnabled|Boolean|Describes the current status of the feature rollout.|

### stagedFeatureName values

| Values | Description |
|:-------------|:------------|
|passthroughAuthentication| PTA|
|seamlessSso| SSSO|
|passwordHashSync| PHS|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|appliesTo|[directoryObject](directoryobject.md) collection| Read-only. Nullable.Specifies a list of directoryObjects that feature is enabled for.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.featureRolloutPolicy",
  "baseType": "",
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

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "featureRolloutPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->