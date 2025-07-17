---
title: "accessReviewInactiveUsersQueryScope resource type"
description: "A type of accessReviewQueryScope that allows only inactive users to be selected in the scope of an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewInactiveUsersQueryScope resource type

Namespace: microsoft.graph

A type of [accessReviewQueryScope](../resources/accessreviewqueryscope.md) that allows only inactive users to be selected in the scope of an access review. The duration of inactivity is calculated based on the user's last sign-in date against the access review instance's start date as defined in the **settings** property of [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md).

Inherits from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inactiveDuration|Duration|Defines the duration of inactivity. Inactivity is based on the last sign in date of the user compared to the access review instance's start date. If this property is not specified, it's assigned the default value `PT0S`.|
|query|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).|
|queryRoot|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).|
|queryType|String|Inherited from [accessReviewQueryScope](../resources/accessreviewqueryscope.md).|

You must also specify the **@odata.type** type property with the value `#microsoft.graph.accessReviewInactiveUsersQueryScope`. For more about configuration options for **scope** using **accessReviewInactiveUsersQueryScope**, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept).

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInactiveUsersQueryScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
  "inactiveDuration": "String (duration)",
  "query": "String",
  "queryRoot": "String",
  "queryType": "String"
  
}
```
