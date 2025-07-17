---
title: "accessReviewQueryScope resource type"
description: "Defines what needs to be reviewed in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewQueryScope resource type

Namespace: microsoft.graph

An accessReviewQueryScope object defines what is reviewed in an [access review](../resources/accessreviewsv2-overview.md). To scope an access review to inactive users, see [accessReviewInactiveUserQueryScope](../resources/accessreviewinactiveusersqueryscope.md). 

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|query|String|The query representing what will be reviewed in an access review.|
|queryRoot|String|In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query is specified. For example, `./manager`.|
|queryType|String|Indicates the type of query. Types include `MicrosoftGraph` and `ARM`.|

Specifying the **@odata.type** type property with the value `#microsoft.graph.accessReviewQueryScope` is highly recommended. For more about configuration options for **scope** using **accessReviewQueryScope**, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept).

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewQueryScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewQueryScope",
  "query": "String",
  "queryRoot": "String",
  "queryType": "String"
}
```
