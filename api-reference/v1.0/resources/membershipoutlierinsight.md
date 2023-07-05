---
title: "membershipoutlierinsight resource type"
description: "In the Azure AD access reviews, the membershipoutlierinsight resource represents insights provided to reviewers based on whether a user has low affiliation with other users within the group."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# membershipoutlierinsight resource type

Namespace: microsoft.graph

Represents an insight provided to reviewers based on whether a user has low affiliation with other users within the group.

Inherits from [governanceInsight](governanceinsight.md).

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| containerId | String | Indicates the identifier of the container, for example, a group ID. |
| memberId | String | Indicates the identifier of the user. |
| outlierContainerType | outlierContainerType | Indicates the type of container. The possible values are: `group`, `unknownFutureValue`. |
| outlierMemberType | outlierMemberType | Indicates the type of outlier member. The possible values are: `user`, `unknownFutureValue`. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|container|[directoryObject](../resources/directoryobject.md)| Navigation link to the container directory object. For example, to a group.|
|lastModifiedBy|[user](../resources/user.md)| Navigation link to a member object who modified the record. For example, to a user.|
|member|[directoryObject](../resources/directoryobject.md)| Navigation link to a member object. For example, to a user.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.membershipoutlierinsight",
  "baseType": "microsoft.graph.governanceInsight",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membershipOutlierInsight",
  "id": "String (identifier)",
  "insightCreatedDateTime": "String (timestamp)",
  "memberId": "String",
  "containerId": "String",
  "outlierContainerType": "String",
  "outlierMemberType": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "membershipoutlierinsight resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->