---
title: "organizationSettings resource type"
description: "Contains settings that are applicable to the organization or the user objects within it."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# organizationSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings that are applicable to the [organization](organization.md) or that should be applied to [user](user.md) objects within an organization.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get organization settings](../api/organizationsettings-get.md) | [organizationSettings](organizationsettings.md) | Read the organization settings object. |
| [Create profileCardProperty](../api/organizationsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new **profileCardProperty** by posting to the **profileCardProperty** object collection. |
| [List contactInsights](../api/organizationsettings-list-contactinsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object for displaying or returning insights for the contacts of users in an organization. |
| [List itemInsights](../api/organizationsettings-list-iteminsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object for displaying or returning item insights in an organization. |
| [List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md) | [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) | Get the properties of a [microsoftApplicationDataAccessSettings](microsoftapplicationdataaccesssettings.md) object that specify access from Microsoft applications to Microsoft 365 user data in an organization. |
| [List peopleInsights](../api/organizationsettings-list-peopleinsights.md) | [insightsSettings](insightssettings.md) | Get the properties of an [insightsSettings](insightssettings.md) object for displaying or returning people insights in an organization. |
| [List profileCardProperties](../api/organizationsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a **profileCardProperty** object collection. |
| [List pronounsSettings](../api/organizationsettings-list-pronounssettings.md)|[pronounsSettings](../resources/pronounssettings.md) resource|Get the properties of the [pronounsSettings](../resources/pronounssettings.md) resource for an organization.|

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|id |String| Id of the settings object for the organization. |
|contactInsights|[insightsSettings](insightssettings.md)|Contains the properties that are configured by an administrator as a tenant-level privacy control whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list. [List contactInsights](../api/organizationsettings-list-contactinsights.md) returns the _settings_ to display or return contact insights in an organization.|
|itemInsights|[insightsSettings](insightssettings.md)| Contains the properties that are configured by an administrator for the visibility of Microsoft Graph-derived insights, between a user and other items in Microsoft 365, such as documents or sites. [List itemInsights](../api/organizationsettings-list-iteminsights.md) returns the _settings_ to display or return item insights in an organization.|
|microsoftApplicationDataAccessSettings|[microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md)| Contains the properties that are configured by an administrator to specify access from Microsoft applications to Microsoft 365 data belonging to users in an organization. [List microsoftApplicationDataAccessSettings](../api/organizationsettings-list-microsoftapplicationdataaccess.md) returns the _settings_ that specify the access. |
|peopleInsights|[insightsSettings](insightssettings.md)| Contains the properties that are configured by an administrator for the visibility of a list of people [relevant and working with](/graph/people-example#including-a-person-as-relevant-or-working-with) a user in Microsoft 365. [List peopleInsights](../api/organizationsettings-list-peopleinsights.md) returns the _settings_ to display or return people insights in an organization.|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection| Contains a collection of the properties an administrator has defined as visible on the Microsoft 365 profile card. [Get organization settings](../api/organizationsettings-get.md) returns the properties configured for profile cards for the organization.|
|pronouns|[pronounsSettings](../resources/pronounssettings.md)|Represents administrator settings that manage the support of pronouns in an organization.|


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
  "id": "String (identifier)",
  "profileCardProperties": [{"@odata.type": "microsoft.graph.profileCardProperty"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organizationSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


