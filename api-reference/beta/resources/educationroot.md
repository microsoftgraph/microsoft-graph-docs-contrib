---
title: "educationRoot resource type"
description: "The `/education` namespace exposes functionality that is specific to the education sector. "
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/29/2024
---

# educationRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `/education` namespace exposes functionality that is specific to the education sector.
Some objects in the `/education` namespace can be found in other parts of Microsoft Graph (for example, [users](user.md)). The education namespace provides education-specific properties and features on these objects.

## Methods

|Method|Return Type|Description|
|:---------------|:--------|:----------|
|[List classes](../api/educationroot-list-classes.md) |[educationClass](educationclass.md) collection| Get an **educationClass** object collection.|
|[Create class](../api/educationroot-post-classes.md) |[educationClass](educationclass.md)| Create a new **educationClass** by posting to the classes collection.|
|[List schools](../api/educationroot-list-schools.md) |[educationSchool](educationschool.md) collection| Get an **educationSchool** object collection.|
|[Create school](../api/educationroot-post-schools.md) |[educationSchool](educationschool.md)| Create a new **educationSchool** by posting to the schools collection.|
|[List users](../api/educationroot-list-users.md) |[educationUser](educationuser.md) collection| Get an **educationUser** object collection.|
|[Create user](../api/educationroot-post-users.md) |[educationUser](educationuser.md)| Create a new **educationUser** by posting to the users collection.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---------------|:--------|:----------|
|classes|[educationClass](educationclass.md) collection| Classes taught at the school. Nullable.|
|me|[educationUser](educationuser.md)| Represents a user in the system. Nullable.|
|reports|[reportsRoot](../resources/reportsroot.md)|A container for all endpoints related to education analytics reports. Read-only. Nullable.|
|schools|[educationSchool](educationschool.md) collection| Schools to which the user belongs. Nullable.|
|users|[educationUser](educationuser.md) collection| Users in the school. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationRoot resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
