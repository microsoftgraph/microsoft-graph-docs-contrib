---
title: "Business Scenarios API overview (preview)"
description: ""
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: ""
---

# Business Scenarios API overview (preview)

Business Scenarios allow integration of real work business processes into native Microsoft Graph entities. Business Scenarios allow applications to create data in the tenant that looks like any other data, however they can specify behaviors for this data to make sure the requirements of the represented business process can be met. Using Business Scenarios applications can work at the tenant level, without having access to the tenant data, outside of the data created for a specific scenario.

Business Scenarios currently allow Microsoft Planner data to be generated through a scenario.

## Why Use the Business Scenarios APIs?

Business Scenarios are all about integrating data into existing Microsoft Graph entities so that your end users can have a consistent experience with data they depend on without having to switch between different applications for common operations. All the data you care about can be surfaced consistently in the Microsoft or external user experiences, and all data is also available in Microsoft Graph so that additional semantics and processes can be built consistently through the Graph API regardless of the origin of the data.

### Least privilege access

With Business Scenarios applications do not require control over all the tenant's data to be able to do accomplish their goals. Business Scenarios only provide access to the data created for teh scenario through the Business Scenario API path, and require Business Scenario specific permission scopes to be consented to have this access. Applications can use other API paths to gather or manipulate other data with additional permissions if needed to build a complete solution.

### Control over user experience

Business Scenarios control how the users and other applications can interact with the data created for the scenario, through scenario managed data containers and configurable permissions. Applications can specify granular permissions and behaviors on the data to make sure the data cannot be manipulated in ways that are incompatible with the requirements of the scenario.

### Control over data

Business Scenario controls the scenario related data. The data created from the scenario is always tied to the scenario, and the configurations set on the scenario apply to all scenario data, even if the data was created before the configuration change. Administrators can control which apps have access to manage the data, or add new applications that can manage existing scenario data. If no longer required, the scenarios can be deleted, which will delete all associated data for the scenario.

### Integrate data from other sources

Business Scenarios are built for integrations. Data created for the scenario can be accessed with application specified identifiers and therefore does not require applications to create mapping of identifiers when integrating data from any kind of data source.

## API reference

Looking for the API reference for this service?

* [Business Scenario API in Microsoft Graph beta](/graph/api/resources/businessscenario-overview)

## Next Steps

Get started using Business Scenarios to integrated data into [Planner](/graph/api/resources/businessscenario-planner-overview)
