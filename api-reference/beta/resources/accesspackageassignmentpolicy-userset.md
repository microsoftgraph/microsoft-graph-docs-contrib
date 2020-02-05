---
title: "accessPackageAssignmentPolicy userSet complex type"
description: "An access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# userSet complex type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The `userSet` type, used in the request, approval and assignment review settings of an [access package assignment policy](accesspackageassignmentpolicy.md), is an abstract base type.

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value as specified in one of the sub-classes below. |
| isBackup | Boolean | For a user in an approval stage, this property indicates that the user is a backup fallback approver. |


### The singleUser type

The singleUser type is used to identify a specific user in the tenant who will be allowed as a requestor, approver or reviewer.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.singleUser`". |
| id |String | The id of the user in Azure AD. |
| description |String | The name of the user in Azure AD. Read only. |
| isBackup | Boolean | For a singleUser in an approval stage, this property indicates that the user is a backup fallback approver. |

### The groupMembers type

The groupMembers type is used to identify a collection of users in the tenant who will be allowed as requestor, approver or reviewer.  The users are members of a specific group.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.groupMembers`". |
| id |String | The id of the group in Azure AD. |
| description |String | The name of the group in Azure AD. Read only. |
| isBackup | Boolean | For a groupMembers in an approval stage, this property indicates that the group members are a backup fallback approver. |

### The connectedOrganizationMembers type

The connectedOrganizationMembers type is used to identify a collection of users in the tenant who will be allowed as requestor, approver or reviewer.  The users are those who are associated with a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
|`@odata.type` | String | The value "`#microsoft.graph.connectedOrganizationMembers`". |
| id |String | The id of the connected organization in entitlement management. |
| description |String | The name of the connected organization. Read only. |
| isBackup | Boolean | Not used at present. |

### The manager type

The groupMembers type is used in an approval stage to indicate that a requesting user's manager is to be the approver.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.manager`". |
| isBackup | Boolean | For a manager in an approval stage, this property indicates that the manager is a backup fallback approver. |

### The internalSponsors type

The internalSponsors type is used in an approval stage to indicate that a requesting user's connected organization internal sponsor is to be the approver.  This approver is only applicable to requests from users who are part of a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |

### The externalSponsors type

The externalSponsors type is used in an approval stage to indicate that a requesting user's connected organization external sponsor is to be the approver. This approver is only applicable to requests from users who are part of a connected organization.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `@odata.type` | String | The value "`#microsoft.graph.internalSponsors`". |
| isBackup | Boolean | This property indicates that the sponsor is a backup fallback approver. |

## JSON representation


The following is a JSON representation of the userSet from the requestor settings property of a policy, which allows the members of a group to request.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userSet",
  "baseType": ""
}-->

```json
{
     "@odata.type": "#microsoft.graph.groupMembers",
     "isBackup": false,
     "id": "string (identifier)",
     "description": "Authorized requestors"
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userSet complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
