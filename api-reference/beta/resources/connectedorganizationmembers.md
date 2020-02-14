---
title: "connectedOrganizationMembers resource type"
description: "The connectedOrganizationMembers type identifies a collection of users in the tenant who will be allowed as requestor, approver or reviewer."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# connectedOrganizationMembers resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the request settings of an [access package assignment policy](accesspackageassignmentpolicy.md). Identifies a collection of users who will be allowed to request an access package. The users are those who are associated with a connected organization.

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
|`@odata.type` | String | The value `#microsoft.graph.connectedOrganizationMembers`. |
| id |String | The ID of the connected organization in entitlement management. |
| description |String | The name of the connected organization. Read only. |
| isBackup | Boolean | Not used at present. |



<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connectedOrganizationMembers complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
