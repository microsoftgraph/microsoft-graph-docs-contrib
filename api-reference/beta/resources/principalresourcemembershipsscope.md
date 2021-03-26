---
title: "principalResourceMembershipsScope resource type"
description: "Allows for the selection scopes to review access of the selected principals to the selected resources."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# principalResourceMembershipsScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The principalResourceMembershipsScope object allows for the selection of scopes to review access of the selected principals to the selected resources. It is used as the `scope` property of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) to review access to privileged roles.

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|principalScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the principals to be included in an access review.|
|resourceScopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Defines the scopes of the resources for which access will be reviewed.|

## Relationships
None.

### Supported queries of type principalResourceMembershipsScope

The following sections describe the supported principalResourceMembershipScopes as `scope` of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) based on the resources being selected.

### ServicePrincipal resource scope 

```json
{
  "odata.type": "#microsoft.graph.principalResourceMembershipsScope",
  "principalScopes": [
    {
      "odata.type": "#microsoft.graph.accessReviewQueryScope",
      "query": "/users",
      "queryType": "MicrosoftGraph"
    }
  ],
  "resourceScopes": [
    {
      "odata.type": "#microsoft.graph.accessReviewQueryScope",
      "query": "/servicePrincipals/7a06f670-2d24-4805-836c-1f4a4d47d567",
      "queryType": "MicrosoftGraph"
    }
  ]
}
```

The following are options for principalScopes: 

#### All users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph"
        }
    ]

```

#### Guest users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        }
    ]

```

### Directory role resource scope 

```json
{
    "odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/roleManagement/directory/roleDefinitions/6125d321-9b1f-4f4a-a826-a0483c18c646",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

The following are options for principalScopes:

#### All users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph"
        }
    ]

```

#### All inactive users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ]

```

#### Guest users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        }
    ]

```


#### Guest inactive users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ]

```

### All Directory roles resource scope 

```json
{
    "odata.type": "#microsoft.graph.principalResourceMembershipsScope",
    "principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph"
        }
    ],
    "resourceScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/roleManagement/directory/roleDefinitions",
            "queryType": "MicrosoftGraph"
        }
    ]
}
```

Here are various options for principalScopes for All Directory Role Resource Scope: 

#### All users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph"
        }
    ]

```

#### All inactive users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
            "query": "/users",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ]

```

#### Guest users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph"
        }
    ]

```


#### Guest inactive users

```json
"principalScopes": [
        {
            "odata.type": "#microsoft.graph.accessReviewInactiveUsersQueryScope",
            "query": "/users?$filter=(userType eq 'Guest')",
            "queryType": "MicrosoftGraph",
            "inactiveDuration": "P30D"
        }
    ]

```

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
