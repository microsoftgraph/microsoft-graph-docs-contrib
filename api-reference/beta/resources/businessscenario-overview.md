---
title: "Use the business scenarios API in Microsoft Graph (preview)"
description: "The business scenarios API allows for the creation and management of business scenarios that configure and manage the integration of data into Microsoft Graph."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: conceptualPageType
---

# Use the business scenarios API in Microsoft Graph (preview)

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The business scenarios API allows for the creation and management of business scenarios that configure and manage the integration of data into Microsoft Graph.

## Structure of a business scenario

A business scenario is represented by the [businessScenario](businessscenario.md) entity. A **businessScenario** resource specifies general information about the scenario, the apps that use that scenario, and configurations for entities that apps can manage to support the scenario. Apps can identify the instance of **businessScenario** by the **uniqueName** property using a reverse domain name format.

### Entities available in business scenarios

The business scenarios API is designed to allow Microsoft Graph services to extend it to support service-specific scenarios that are specific to customers.

Currently, [Planner](businessscenario-planner-overview.md) has extended the API. The API supports custom scenario data for Planner in the [businessScenarioTask](businessscenariotask.md) entity.

> [!Note]
> Do you have a scenario that requires bringing in custom data as entities to another Microsoft 365 service? [Suggest the feature or vote for existing feature requests](https://developer.microsoft.com/en-us/graph/support).

## Creating a business scenario

Business scenarios can be created by applications using the delegated permission `BusinessScenarioConfig.ReadWrite.OwnedBy`. Creating a business scenario requires specifying a display name and a unique name. The unique name should be in the reverse DNS format to prevent conflict between independent scenarios. The reverse DNS format takes the domain name the scenario creator owns and reverses it. For example, if a developer who owns `apps.contoso.com` creates a scenario, the unique name of the scenario should start with `com.contoso.apps`. Then further segments can be added to differentiate scenarios or groups of scenarios; for example, `com.contoso.apps.customerSupport.ticketManagement`. The unique name of the scenario must be distinct from every other scenario deployed in a tenant.

For more information, see [Create businessScenario](../api/solutionsroot-post-businessscenarios.md).

## Configuring behaviors for entities

Each service supported through business scenarios provides configurations in the scenario. Applications need to have the `BusinessScenarioConfig.Read.OwnedBy` permission to be able to access these configurations, and the `BusinessScenarioConfig.ReadWrite.OwnedBy` permission to be able to change them. Each configuration is specific for the service. For more details, see the following service-specific topics:

* [Planner](businessscenario-planner-overview.md) provides the following configurations:
  * [plannerPlanConfiguration](plannerplanconfiguration.md)
  * [plannerTaskConfiguration](plannertaskconfiguration.md)

## Creating and managing data for a business scenario

Each service supported through business scenarios provides access to data within a scenario. Applications need to be listed as an owner in a scenario to work with the data in the scenario. Applications also need to have the `BusinessScenarioData.Read.OwnedBy` permission to be able to read the data, and the `BusinessScenarioData.ReadWrite.OwnedBy` permission to be able to create new data, or to modify previously created data. For more details, see the following service-specific topics:

* [Planner](businessscenario-planner-overview.md), with the following supported entities:
  * [businessScenarioTask](businessscenariotask.md)

## Deleting a business scenario

Applications that own a business scenario can delete the scenario if they have the `BusinessScenarioConfig.ReadWrite.OwnedBy` permission. Deleting the scenario removes all the data associated with the scenario as well.

For more information, see [Delete businessScenario](../api/businessscenario-delete.md).

## Common use cases

| Use cases | REST resources | See also |
|:----------|:---------------|:---------|
|Create, read, update, and delete business scenarios|[businessScenario](businessscenario.md)|[Methods of businessScenario](businessscenario.md#methods)|
|Configure business scenarios for Planner| [plannerPlanConfiguration](plannerplanconfiguration.md) [plannerTaskConfiguration](plannertaskconfiguration.md)|[Methods of plannerPlanConfiguration](plannerplanconfiguration.md#methods) [Methods of plannerTaskConfiguration](plannertaskconfiguration.md#methods)|
|Create, read, update, and delete business scenario tasks in Planner| [businessScenarioTask](businessscenariotask.md)| [businessScenarioTask](businessscenariotask.md#methods)|

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

The business scenarios API allows apps to model and integrate real work business processes with a Microsoft 365 service over Microsoft Graph. To learn more:

* Drill down on the methods and properties of the resources most helpful to your scenario.
* Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/partners).
