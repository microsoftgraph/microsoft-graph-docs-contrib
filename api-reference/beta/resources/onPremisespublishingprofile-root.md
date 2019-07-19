---
title: "On-premises publishing profiles"
description: "Various Azure services (for example, Azue Active Directory Connect Passthrough Authentication, Workday to Azure AD users provisioning) allow a conditional access to various on-premises resources from outside the corporate network."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# On-premises publishing profiles

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Various Azure services (for example, Azue Active Directory Connect Passthrough Authentication, Workday to Azure AD users provisioning) allow a conditional access to various on-premises resources from outside the corporate network. [On-premises agents](onpremisesagent.md) installed by a tenant administrator can be configured to access/handle requests to a particular [published resource](publishedresource.md).
[Agent groups](onpremisesagentgroup.md) enable a tenant admin to assign specific agents to serve specific published on-premises resources. Tenant admins can group a number of agents together, and then assign each published resource to a group. The entire set of entities of the same on-premises publishing type is represented by [onPremisesPublishingProfile](onpremisespublishingprofile.md) .

A tenant admin can configure for each **onPremisesPublishingProfile** the [time window](updatewindow.md) during which agents can receive updates or defer updates to the agents. The [updater configuration](hybridagentupdaterconfiguration.md) specified for an **onPremisesPublishingProfile** is applicable to all the agents within that **onPremisesPublishingProfile**.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get onPremisesPublishingProfile](../api/onpremisespublishingprofile-get.md) | [onPremisesPublishingProfile](onpremisespublishingprofile.md) | Read properties and relationships of onPremisesPublishingProfile object. |
| [Update onPremisesPublishingProfile](../api/onpremisespublishingprofile-update.md) | None | Update [hybridAgentUpdaterConfiguration](hybridagentupdaterconfiguration.md) object properties.
| [Get onPremisesAgent](../api/onpremisesagent-get.md) | [onPremisesAgent](onpremisesagent.md) | Read properties and relationships of onPremisesAgent object. |
| [List onPremisesAgents](../api/onpremisesagent-list.md) | [onPremisesAgent](onpremisesagent.md) collection | Get an onPremisesAgents object collection. |
| [Assign onPremisesAgent to onPremisesAgentGroup](../api/onpremisesagent-post-agentgroups.md) | None |  |
| [Remove onpremisesAgent from an onPremisesAgentGroup](../api/onpremisesagent-delete-agentgroups.md) | None |  |
| [Get onPremisesAgentGroup](../api/onpremisesagentgroup-get.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Read properties and relationships of onPremisesAgentGroup object. |
| [Create onPremisesAgentGroup](../api/onpremisesagentgroup-create.md)  | [onPremisesAgentGroup](onpremisesagentgroup.md) | Create a new onPremisesAgentGroup. |
| [List onPremisesAgentGroups](../api/onpremisesagentgroup-list.md) | onPremisesAgentGroups collection | Get a onPremisesAgentGroup objects collection. |
| [Update onPremisesAgentGroup](../api/onpremisesagentgroup-update.md) | [onPremisesAgentGroup](onpremisesagentgroup.md) | Update onPremisesAgentGroup object. |
| [Delete  onPremisesAgentGroup](../api/onpremisesagentgroup-delete.md) | None | Delete onPremisesAgentGroup object. |
| [Get publishedResource](../api/publishedresource-get.md) | [publishedResource](publishedresource.md) | Read properties and relationships of publishedResource object. |
| [Create publishedResource](../api/publishedresource-post.md) |  [publishedResource](publishedresource.md)  | Create a new publishedResource. |
| [Update publishedResource](../api/publishedresource-update.md) | [publishedResource](publishedresource.md) | Update publishedResource object. |
| [Delete  publishedResource](../api/publishedresource-delete.md) | None | Delete publishedResource object. |
| [List publishedResources](../api/publishedresource-list.md) | [publishedResource](publishedresource.md) objects collection | Get publishedResources object collection. |
| [Assign publishedResource to onPremisesAgentGroup](../api/publishedresource-post-agentgroups.md) | None |  |
| [Remove publishedResource from onPremisesAgentGroup](../api/publishedresource-delete-agentgroups.md) | None |  |

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
