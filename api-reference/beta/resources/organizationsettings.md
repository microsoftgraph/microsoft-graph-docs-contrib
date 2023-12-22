---
title: "organizationSettings resource type"
description: "Contains settings that are applicable to the organization or the user objects within it."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# organizationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings that are applicable to the [organization](organization.md) or that should be applied to [user](user.md) objects within an organization.

Inherits from [entity](entity.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List contactInsights](../api/organizationsettings-list-contactinsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object for displaying or returning insights for the contacts of users in an organization. |
| [List itemInsights](../api/organizationsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object for displaying or returning item insights in an organization. |
| [List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md) | [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) | Get the properties of a [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) object that specify access from Microsoft applications to Microsoft 365 user data in an organization. |
| [List peopleInsights](../api/organizationsettings-list-peopleinsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object for displaying or returning people insights in an organization. |

## Properties

| Property | Type   | Description                                                                                       |
|:---------|:-------|:--------------------------------------------------------------------------------------------------|
| id       | String | The unique identifier for an **organizationSettings** object. Inherited from [entity](entity.md). |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|id |String| Id of the settings object for the organization. |
|contactInsights|[insightsSettings](insightssettings.md)|Contains the properties that are configured by an administrator as a tenant-level privacy control whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list. [List contactInsights](../api/organizationsettings-list-contactinsights.md) returns the _settings_ to display or return contact insights in an organization.|
|itemInsights|[insightsSettings](insightssettings.md)| Contains the properties that are configured by an administrator for the visibility of Microsoft Graph-derived insights, between a user and other items in Microsoft 365, such as documents or sites. [List itemInsights](../api/organizationsettings-list-iteminsights.md) returns the _settings_ to display or return item insights in an organization.|
|microsoftApplicationDataAccessSettings|[microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md)| Contains the properties that are configured by an administrator to specify access from Microsoft applications to Microsoft 365 data belonging to users in an organization. [List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md) returns the _settings_ that specify the access. |
|peopleInsights|[insightsSettings](insightssettings.md)| Contains the properties that are configured by an administrator for the visibility of a list of people [relevant and working with](/graph/people-insights-overview#including-a-person-as-relevant-or-working-with) a user in Microsoft 365. [List peopleInsights](../api/organizationsettings-list-peopleinsights.md) returns the _settings_ to display or return people insights in an organization.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.organizationSettings",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)"
}
```
