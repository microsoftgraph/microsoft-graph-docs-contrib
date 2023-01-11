---
title: "Business scenarios API overview (preview)"
description: "Learn how to use the business scenarios API in Microsoft Graph to integrate data into Microsoft Graph entities."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
---

# Business scenarios API overview (preview)

The business scenarios API allows apps to model and integrate real work business processes with a Microsoft 365 service over Microsoft Graph. Business scenarios allow applications to create data in the form of existing Microsoft Graph entities in the tenant; however, they can specify behaviors for this data to make sure that the requirements of the represented business process can be met. While the data created for the scenario behaves in accordance with the scenario rules, other applications can consume this data the same way they consume other data for the same entity types. Business scenario applications can work at the tenant level, without having access to the tenant data, outside of the data created for a specific scenario.

Business scenarios currently allow Microsoft Planner data to be generated through a scenario.

## Why use the business scenarios API?

Business scenarios are all about integrating data into existing Microsoft Graph entities, resulting in a consistent experience for your end users with data they depend on without having to switch between different applications for common operations. All the data you care about can be surfaced consistently in the external or Microsoft user experiences. Additionally, all data is also available in Microsoft Graph, allowing additional semantics and processes to be built consistently through the Microsoft Graph API regardless of the origin of the data.

### Least privileged access

Business scenario applications do not require control over all the data in a tenant in order to accomplish their goals. Business scenarios only provide access to the data created for the scenario through the business scenario API path, and require business scenario-specific permission scopes to be consented to in order to have this access. Applications can use other API paths to gather or manipulate other data with additional permissions if needed in order to build a complete solution.

### Control over user experience

Business scenarios control how the users and other applications can interact with the data created for the scenario through scenario-managed data containers and configurable permissions. Applications can specify granular permissions and behaviors on the data to make sure the data cannot be manipulated in ways that are incompatible with the scenario requirements.

### Control over data

The business scenario controls the scenario-related data. The data created from the scenario is always tied to the scenario, and the configurations set on the scenario apply to all scenario data, even if the data was created before the configuration change. Administrators can control which apps have access to manage the data, or add new applications that can manage existing scenario data. If no longer required, the scenarios can be deleted, which will delete all associated data for the scenario.

### Central control over configuration

Business scenarios provide a single configurationn point. The behavior of data and the user experience around them can be changed globally by simply updating the scenario, instead of finding and updating each data object separately.

### Integrate data from other sources

Business scenarios are built for integrations. Data created for the scenario can be accessed with application-specified identifiers and therefore does not require applications to create mapping of identifiers when integrating data from any kind of data source.

## API reference

Looking for the API reference for this service?

* [Use the business scenarios API in Microsoft Graph beta](/graph/api/resources/businessscenario-overview)

## Next Steps

Get started using business scenarios to integrate data into [Microsoft Planner](/graph/api/resources/businessscenario-planner-overview).
