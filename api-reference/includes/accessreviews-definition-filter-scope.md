---
author: isabelleatmsft
ms.topic: include
ms.date: 02/02/2023
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

The `$filter` query parameter with the `contains` operator is supported on the **scope** property of **accessReviewScheduleDefinition**. Use the following format for the request:

```http
/identityGovernance/accessReviews/definitions?$filter=contains(scope/microsoft.graph.accessReviewQueryScope/query, '{object}')
```

The value of `{object}` can be one of the following:

|Value|Description|
|:---     |:---       |
|`/groups`  |List every accessReviewScheduleDefinition on individual groups (excludes definitions scoped to all Microsoft 365 groups with guest users).|
|`/groups/{group id}`  |List every accessReviewScheduleDefinition on a specific group (excludes definitions scoped to all Microsoft 365 groups with guest users).|
|`./members`  |List every accessReviewScheduleDefinition scoped to all Microsoft 365 groups with guest users.|
|`accessPackageAssignments`  |List every accessReviewScheduleDefinition on an access package.|
|`roleAssignmentScheduleInstances`  |List every accessReviewScheduleDefinition for principals that are assigned to a privileged role.|

The `$filter` query parameter is not supported on **accessReviewInactiveUserQueryScope** or **principalResourceMembershipScope**.