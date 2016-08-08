# policy resource type

Represents an Azure AD policy. Policies can be enforced on applications, service principals, groups, or the entire directory they are assigned to. There are currently two types of policies available: Token Lifetime Policy and Naming Policy.

### Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
| [Get policy](../api/policy_get.md) |Policy|Read properties and relationships of user object.|
|[Create policy](../api/policy_post.md)|Policy|Create a new policy object.|
|[Update policy](../api/policy_update.md)|None|Update policy object.|
|[Delete policy](../api/policy_delete.md)|None|Delete policy object.|
|[Assign policy](../api/policy_assign.md)|None|Assign a policy to an application, service principal.|
|[List policies](../api/policy_list.md)|Policy collection|Get all policy objects in the directory.|
|[List assigned policies](../api/policy_list_assigned.md)|Policy collection|Get all policy objects assigned to an application or service principal.|


### Common Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The stringified version of the specific policy. See below. Required.|
|displayName|String|A custom name for the policy. Required.|
|IsOrganizationDefault|Boolean|If set to true, activates this policy for the entire directory. Only one of each type of policy can be have this flag set to true at a time. Optional, default value is false.|
|type|String|Specifies the type of policy. Currently must be "TokenLifetimePolicy" or "NamingPolicy". Required.|

## Token Lifetime Policy
Specifies the lifetimes of tokens issued for various purposes. There are three kinds of tokens whose lifetimes can be configured. Access/Refresh token pairs are obtained during authentication through a client, whereas ID/Session token pairs are obtained during authentication through a browser.

- **Access Token** contains information about the identity and privileges associated with a user account that is used by clients to access protected resources like applications.
- **Refresh Token** is obtained together with the access token when a user authenticates against Azure AD through a client to access a protected resource. While it is not revoked or left unused for more than the RefreshTokenMaxInactiveTime (below), it can be used to obtain a new access/refresh token pair when the current access token expires.
- **ID Token** behaves like an access token, but obtained through the browser.
- **Session Token** behaves like a refresh token, but obtained through the browser.

#### Properties
The properties below form the JSON object that represents a token lifetime policy. This JSON object must be **stringified with quotations escaped** to be inserted into the "definition" common policy property. An example is shown below.

>Note: All time durations in these properties are specified in the format "dd.hh:mm:ss".

>Note: Max values for properties denoted in "days" are 1 second short of the denoted number of days. For example, the max value of 1 days is specified as "23:59:59".

| Property	   | Type	|Description| Min Value | Max Value | Default Value|
|:---------------|:--------|:----------|:--------|:--------|:----|
|AccessTokenLifetime|String|Controls how long **both access and ID tokens** are considered valid.|10 minutes|1 day|1 hour|
|MaxInactiveTime|String|Controls how old a refresh token can be before a client can no longer use it to retrieve a new access/refresh token pair to access a resource.|10 minutes|90 days|90 days|
|SingleFactorRefreshTokenMaxAge|String|Controls how long a user can continue to use refresh tokens to get new access/refresh token pairs after the last time they authenticated successfully with only a single factor. Because single-factor is considered less secure than multi-factor authentication, it is recommended that this policy is set to an equal or lesser value than the MultiFactorRefreshTokenMaxAge.|10 minutes|Until-revoked|Until-revoked|
|MultiFactorRefreshTokenMaxAge|String|Controls how long a user can continue to use refresh tokens to get new access/refresh token pairs after the last time they authenticated successfully with multi factors.|10 minutes|Until-revoked|Until-revoked|
|SingleFactorSessionTokenAge|String|Controls how long a user can continue to use session tokens to get new ID/session tokens after the last time they authenticated successfully with only a single factor. Because single-factor is considered less secure than multi-factor authentication, it is recommended that this policy is set to an equal or lesser value than the MultiFactorSessionTokenMaxAge|10 minutes|Until-revoked|Until-revoked|
|MultiFactorSessionTokenMaxAge|String|Controls how long a user can continue to use session tokens to get new ID/session tokens after the last time they authenticated successfully with multi factors.|10 minutes|Until-revoked|Until-revoked|
|Version|Integer|Set value of 1. Required.|None|None|None|

#### Relationships
|Relationship|Type|Description|
|:-------------|:-----------|:-----------|
|Application|[application](../resources/application.md)|The application to which the policy is assigned to.|
|Service Principal|[serviceprincipal](../resources/serviceprincipal.md)|The service principal to which the policy is assigned to.|

### JSON representation

Here is a JSON representation of the resource.

```json
{
  "definition":["{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\",\"MaxInactiveTime\":\"20:00:00\",}}"],
  "displayName":"Test Policy",
  "isOrganizationDefault":false,
  "type":"TokenLifetimePolicy",
}

```
## Naming Policy
Specifies the set of words that are banned from being used in [Group](../resources/group.md) displayName and mailNickname. This type of policy is globally enforced on all new groups across the entire organization, so they cannot be assigned to specific groups. Additionally, no action is performed on previously created groups that contain blocked words in their displayName and/or mailNickname.

#### Properties
The properties below form the JSON object that represents a naming policy. This JSON object must be **stringified with quotations escaped** to be inserted into the "definition" common policy property. An example is shown below.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|Active|Boolean|Determines if the policy is active and needs to be evaluated.|
|PolicyTerms|String collection|Collection of blocked words.|
|Type|String|Type of blocked words policy. Currently only accepts "CustomBlockedWordPolicy"|
|Version|String|Set value of "1.0". Required|

#### Relationships
|Relationship|Type|Description|
|:-------------|:-----------|:-----------|
|Group|[group](../resources/group.md)|New groups that are affected by blocked words policies on displayName and mailNickname properties.|

### JSON representation

Here is a JSON representation of the resource.

```json
{
    "definition": [
        "{\"Policies\":[{ \"Active\":true,\"Type\":\"CustomBlockedWordPolicy\",\"Version\":\"1.0\",\"PolicyTerms\":{\"BlockedWords\":[\"some\",\"blocked\",\"words\",\"abc\",\"bcd\"]}}]}"
    ],
    "displayName": "BadWordPolicy",
    "isOrganizationDefault":false,
    "type": "NamingPolicy"
}

```
