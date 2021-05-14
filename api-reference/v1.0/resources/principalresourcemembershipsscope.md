---
title: "principalResourceMembershipsScope resource type"
description: "Allows for the selection of access review scope to review access of the selected principals to the selected resources."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# principalResourceMembershipsScope resource type

Namespace: microsoft.graph

The principalResourceMembershipsScope is a type of [accessReviewScope](accessreviewscope.md) that allows you to select a collection of principal scopes and a collection of resource scopes and review access of selected principals to selected resources. See the supported queries to see what can be selected. It is used as the `scope` property of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md).

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|principalScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the principals whose access to resources is reviewed in the access review.|
|resourceScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the resources for which access is reviewed.|

## Relationships
None.

### Supported queries for resourceScope
The queries are supported as the `resourceScope` property and they determine the set of resources for which access is being reviewed. 

|Scenario| resourceScope Query | 
|--|--|
| Reviewing access of principalScopes to a service principal | /servicePrincipals/{service principal ID} |
| Reviewing access of principalScopes to an Azure AD directory role | /roleManagement/directory/roleDefinitions/{role ID} |
| Reviewing access of principalScopes to all Azure AD directory roles | /roleManagement/directory/roleDefinitions |

### Supported queries for principalScope
The queries are supported as the `principalScope` property. They determine the set of principals whose access to the associated resourceScope is reviewed. The associated principalScope lists the OData query types accepted as the principalScope.

|Scenario| principalScope Query | OData Query Type | Additional Comments |
|--|--|-- | --|
| Review access of all users to the resourceScope | /users |[accessReviewQueryScope](accessreviewqueryscope.md)||
| Review access of  guest users to the resourceScope | /users?$filter=(userType eq 'Guest') |[accessReviewQueryScope](accessreviewqueryscope.md)||
| Review access of all inactive users to the resourceScope | /users |[accessReviewInactiveUsersQueryScope](accessreviewinactiveusersqueryscope.md)| Must include `instanceDuration` property|
| Review access of guest inactive users to the resourceScope | /users?$filter=(userType eq 'Guest') |[accessReviewInactiveUsersQueryScope](accessreviewinactiveusersqueryscope.md)| Must include `instanceDuration` property|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.principalResourceMembershipsScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.principalResourceMembershipsScope",
  "principalScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "resourceScopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ]
}
```
