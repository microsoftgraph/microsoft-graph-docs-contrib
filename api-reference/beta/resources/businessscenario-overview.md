---
title: "Business Scenarios API (Preview) Overview"
description: ""
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: ""
---

# Working with the Business Scenario API (Preview)

Business Scenario API allows creation and management of Business Scenarios that configure and manage integration of data into Microsoft Graph.

## Structure of a Business Scenario

A Business Scenario is represented by the [businessScenario](businessscenario.md) entity. The business scenario contains general information about the scenario, specifies  which applications can use the scenario, as well as configurations for entities that can be managed with the scenario. Each scenario specifies a unique name, which allows the scenario to be accessed by the application independent of the instance specific identifier.

### Entities available in Business Scenarios

Business Scenarios currently support creating content for the following services:

* [Planner](businessscenario-planner-overview.md), with the following supported entities:
  * [businessScenarioTask](businessscenariotask.md)

## Creating a Business Scenario

Business Scenarios can be created by applications using the delegated permission `BusinessScenarioConfig.ReadWrite.OwnedBy`. Creating a Business Scenario requires specifying a display name and a unique name. Unique name should be in the reverse-dns format to prevent conflict between independent scenarios. The reverse DNS format takes the domain name the scenario creator owns and reverses it. For example, if a developer owning `apps.contoso.com` creates a scenario, the unique name of the scenario should start with `com.contoso.apps`. Then further segments can be added to differentiate scenarios or groups of scenarios, for example `com.contoso.apps.customerSupport.ticketManagement`. Unique name of the scenario must be distict from every other scenario deployed in a tenant.

Refer to the [request page](../api/solutionsroot-post-businessscenarios.md) for more information.

## Configuring behaviors for Entities

Each service supported through Business Scenarios provide configurations in the scenario. Applications need to have `BusinessScenarioConfig.Read.OwnedBy` permission to be able to access thes configurations, and `BusinessScenarioConfig.ReadWrite.OwnedBy` permission to be able to change them. Each configuration is specific for the service. Please check service specific pages for more information:

* [Planner](businessscenario-planner-overview.md) provides the following configurations:
  * Plan Config
  * Task Config

## Creating and managing data for a Business Scenario

Each service supported through Business Scenarios provide access to data within a scenario. Applications need be listed as an owner in the scenario to work with the data in a scenario. Additionally applications need to have `BusinessScenarioData.Read.OwnedBy` permission to be able to read the data, and `BusinessScenarioData.ReadWrite.OwnedBy` permission to be able to create new data, or to modify previously created data. Please check service specific pages for more information:

* [Planner](businessscenario-planner-overview.md), with the following supported entities:
  * tasks

## Deleting a Business Scenario

Applications that own a business scenario can delete the scenario if they have `BusinessScenarioConfig.ReadWrite.OwnedBy` permission. Deleting the scenario removes all the data associated with the scenario as well.

REfert to the [request page](../api/solutionsroot-delete-businessscenarios.md) for more information.