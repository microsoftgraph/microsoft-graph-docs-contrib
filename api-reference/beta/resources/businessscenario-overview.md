---
title: "Use the business scenarios API in Microsoft Graph (preview)"
description: "Business scenarios API allows creation and management of business scenarios that configure and manage integration of data into Microsoft Graph."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: ""
---

# Use the business scenarios API in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Business scenarios API allows creation and management of business scenarios that configure and manage integration of data into Microsoft Graph.

## Structure of a business scenario

A business scenario is represented by the [businessScenario](businessscenario.md) entity. The business scenario contains general information about the scenario, specifies which applications can use the scenario, as well as configurations for entities that can be managed with the scenario. Each scenario specifies a unique name, which allows the scenario to be accessed by the application independent of the instance-specific identifier.

### Entities available in business scenarios

Business scenarios currently support creating content for the following services:

* [Planner](businessscenario-planner-overview.md), with the following supported entities:
  * [businessScenarioTask](businessscenariotask.md)

## Creating a business scenario

Business scenarios can be created by applications using the delegated permission `BusinessScenarioConfig.ReadWrite.OwnedBy`. Creating a business scenario requires specifying a display name and a unique name. Unique name should be in the reverse DNS format to prevent conflict between independent scenarios. The reverse DNS format takes the domain name the scenario creator owns and reverses it. For example, if a developer owning `apps.contoso.com` creates a scenario, the unique name of the scenario should start with `com.contoso.apps`. Then further segments can be added to differentiate scenarios or groups of scenarios, for example `com.contoso.apps.customerSupport.ticketManagement`. The unique name of the scenario must be distinct from every other scenario deployed in a tenant.

For more information, see [Create businessScenario](../api/solutionsroot-post-businessscenarios.md).

## Configuring behaviors for entities

Each service supported through business scenarios provide configurations in the scenario. Applications need to have the `BusinessScenarioConfig.Read.OwnedBy` permission to be able to access these configurations, and the `BusinessScenarioConfig.ReadWrite.OwnedBy` permission to be able to change them. Each configuration is specific for the service. For more details, see the following service-specific topics:

* [Planner](businessscenario-planner-overview.md) provides the following configurations:
  * [plannerPlanConfiguration](plannerplanconfiguration.md)
  * [plannerTaskConfiguration](plannertaskconfiguration.md)

## Creating and managing data for a business scenario

Each service supported through business scenarios provide access to data within a scenario. Applications need to be listed as an owner in the scenario to work with the data in a scenario. Additionally applications need to have the `BusinessScenarioData.Read.OwnedBy` permission to be able to read the data, and the `BusinessScenarioData.ReadWrite.OwnedBy` permission to be able to create new data, or to modify previously created data. For more details, see the following service-specific topics:

* [Planner](businessscenario-planner-overview.md), with the following supported entities:
  * [businessScenarioTask](businessscenariotask.md)

## Deleting a business scenario

Applications that own a business scenario can delete the scenario if they have the `BusinessScenarioConfig.ReadWrite.OwnedBy` permission. Deleting the scenario removes all the data associated with the scenario as well.

For more information, see [Delete businessScenario](../api/solutionsroot-delete-businessscenarios.md).

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

The business scenarios API allows apps to model and integrate real work business processes with a Microsoft 365 service over Microsoft Graph. To learn more:

* Drill down on the methods and properties of the resources most helpful to your scenario.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/partners).
